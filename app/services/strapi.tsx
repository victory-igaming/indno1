import qs from "qs";

/**
 * ============================================================
 * CONFIG
 * ============================================================
 */

// Base Strapi URL (public, safe to expose)
const rawBaseUrl =
  process.env.NEXT_PUBLIC_STRAPI_URL || "http://localhost:1337";
// Normalize to avoid double slashes when constructing URLs
const baseUrl = rawBaseUrl.replace(/\/+$/, "");

// Private token (ONLY used for protected endpoints)
//const TOKEN = process.env.API_TOKEN_SALT;
const TOKEN = process.env.NEXT_PUBLIC_STRAPI_API_TOKEN;

/**
 * ============================================================
 * GENERIC STRAPI FETCH (PUBLIC CONTENT)
 * ============================================================
 *
 * ❗ FIXED:
 * - REMOVED: cache: 'no-store' (this was breaking static builds)
 * - ADDED: next.revalidate for ISR compatibility
 * - ADDED: safe error handling (returns null instead of crashing)
 */
export async function strapiFetch(path: string) {
  const cleanPath = path.replace(/^\/+/, "");
  const fullUrl = `${baseUrl}/api/${cleanPath}`;

  try {
    const res = await fetch(fullUrl, {
      // ✅ ISR — allows static build + periodic refresh
      next: { revalidate: 60 }, // change to 300 / 600 if needed
    });

    if (!res.ok) {
      console.error(`Strapi error ${res.status}: ${fullUrl}`);
      return null;
    }

    return await res.json();
  } catch (error) {
    console.error("Could not fetch from Strapi:", error);
    return null;
  }
}

/**
 * ============================================================
 * STRAPI FETCH WITH AUTH (IMAGES / PROTECTED DATA)
 * ============================================================
 *
 * ❗ FIXED:
 * - REMOVED: cache: 'no-store'
 * - ADDED: ISR revalidation
 */
export async function strapiUrlImage(path: string) {
  const cleanPath = path.replace(/^\/+/, "");
  const fullUrl = `${baseUrl}/api/${cleanPath}`;

  try {
    const res = await fetch(fullUrl, {
      headers: {
        Authorization: `Bearer ${TOKEN}`,
        "Content-Type": "application/json",
      },
      // ✅ ISR instead of forcing dynamic
      next: { revalidate: 60 },
    });

    if (!res.ok) {
      console.error(`Image fetch failed ${res.status}: ${fullUrl}`);
      return null;
    }

    return await res.json();
  } catch (error) {
    console.error("Could not fetch image from Strapi:", error);
    return null;
  }
}

/**
 * ============================================================
 * MEDIA URL HELPER
 * ============================================================
 */
export function getStrapiMedia(url: string | null) {
  if (!url) return null;

  // Already absolute (Cloudinary, S3, etc.)
  if (url.startsWith("http") || url.startsWith("//")) return url;

  // Local Strapi file
  return `${baseUrl}${url}`;
}

/**
 * ============================================================
 * BLOG: FETCH BY DOCUMENT ID
 * ============================================================
 *
 * ❗ FIXED:
 * - REMOVED: cache: 'no-store'
 * - ADDED: ISR
 */
export async function getBlogByDocumentId(docId: string) {
  try {
    const res = await fetch(
      `${baseUrl}/api/blogs/${docId}?populate=deep`,
      {
        headers: {
          Authorization: `Bearer ${TOKEN}`,
          "Content-Type": "application/json",
        },
        next: { revalidate: 60 },
      }
    );

    if (!res.ok) {
      console.error(`Blog fetch failed: ${docId}`);
      return null;
    }

    const json = await res.json();
    return json?.data ?? null;
  } catch (error) {
    console.error("getBlogByDocumentId error:", error);
    return null;
  }
}

/**
 * ============================================================
 * BLOG: FETCH BY SLUG
 * ============================================================
 *
 * ❗ FIXED:
 * - REMOVED: cache: 'no-store'
 * - ADDED: ISR
 * - ADDED: safe null handling
 */
export async function getBlogBySlug(slug: string) {
  const query = qs.stringify(
    {
      filters: { seoUrl: { $eq: slug } },
      populate: "*",
    },
    { encodeValuesOnly: true }
  );

  try {
    const res = await fetch(`${baseUrl}/api/blogs?${query}`, {
      headers: {
        Authorization: `Bearer ${TOKEN}`,
        "Content-Type": "application/json",
      },
      next: { revalidate: 60 },
    });

    if (!res.ok) {
      const errorData = await res.json();
      console.error("Strapi slug fetch error:", errorData);
      return null;
    }

    return await res.json();
  } catch (error) {
    console.error("getBlogBySlug error:", error);
    return null;
  }
}

/**
 * ============================================================
 * GAME / CATEGORY FETCH
 * ============================================================
 *
 * ❗ FIXED:
 * - REMOVED: cache: 'no-store'
 * - ADDED: ISR
 */
export async function getAllCategories() {
  try {
    const res = await fetch(`${baseUrl}/api/gamepages?populate=*`, {
      headers: {
        Authorization: `Bearer ${TOKEN}`,
        "Content-Type": "application/json",
      },
      next: { revalidate: 60 },
    });

    if (!res.ok) {
      console.error("Failed to fetch categories");
      return [];
    }

    const json = await res.json();
    return json?.data ?? [];
  } catch (error) {
    console.error("getAllCategories error:", error);
    return [];
  }
}




/**
 * ============================================================
 * GAME PLAY TRACKING
 * ============================================================
 */

export async function startGamePlay(phone: string, gamename: string,ip: string) {
  try {
    const res = await fetch(`${baseUrl}/api/game-play-tracks`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${TOKEN}`,
      },
      body: JSON.stringify({
        data: {
          phone: phone,
          game_name: gamename,
          play_start: new Date().toISOString(),
          ip_address: ip,
        },
      }),
    });

    //const text = await res.text();
    //console.log("startGamePlay response:", res.status, text);

    if (!res.ok) {
      console.error("Failed to start game play");
      return null;
    }

    const json = await res.json();
    return json?.data ?? null;

  } catch (error) {
    console.error("startGamePlay error:", error);
    return null;
  }
}




/**
 * END GAME PLAY
 */

export async function endGamePlay(id: number, duration: number) {
  try {
    const res = await fetch(`${baseUrl}/api/game-play-tracks/${id}`, {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${TOKEN}`,
      },
      body: JSON.stringify({
        data: {
          play_end: new Date().toISOString(),
          duration: duration,
        },
      }),
    });
    console.log("endGame.PlayplayId.current", id);
    const text = await res.text();
    console.log("endGamePlay response:", res.status, text);

    if (!res.ok) {
      console.error("Failed to update play record");
      return null;
    }

    const json = await res.json();
    return json?.data ?? null;

  } catch (error) {
    console.error("endGamePlay error:", error);
    return null;
  }
}





/**
 * ============================================================
 * Spring Wheel TRACKING
 * ============================================================
 */

type SpinPayload = {
  phone: string;
  prize_label: string;
  amount: number;
  spinstatus: "pending" | "claimed" | "expired";
};

export async function saveSpringWheel(payload: SpinPayload) {
  try {

    // 1️⃣ Check duplicate phone
    const check = await fetch(
      `${baseUrl}/api/spin-histories?filters[phone][$eq]=${payload.phone}`,
      {
        headers: {
          Authorization: `Bearer ${TOKEN}`,
        },
      }
    );

    const checkJson = await check.json();

    if (checkJson?.data?.length > 0) {
      console.log("Phone already used");
      return { duplicate: true };
    }


    const res = await fetch(`${baseUrl}/api/spin-histories`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${TOKEN}`,
      },
      body: JSON.stringify({
        data: payload,
      }),
    });

    const json = await res.json();
    console.log("SpringWheel response:", res.status, json);

    if (!res.ok) {
      console.error("Failed to start SpringWheel");
      return null;
    }


    return json?.data ?? null;

  } catch (error) {
    console.error("SpringWheel error:", error);
    return null;
  }
}


/**
 * ============================================================
 * Spring Wheel Check Phone Number TRACKING
 * ============================================================
 */


export async function varifySpringMobile(phone: string) {
  try {

    // 1️⃣ Check duplicate phone
    const check = await fetch(
      `${baseUrl}/api/spin-histories?filters[phone][$eq]=${phone}`,
      {
        headers: {
          Authorization: `Bearer ${TOKEN}`,
        },
      }
    );

    const checkJson = await check.json();

    if (checkJson?.data?.length > 0) {
      console.log("Phone already used");
      return { duplicate: true };
    }   

    return null;

  } catch (error) {
    console.error("SpringWheel Tel. error:", error);
    return null;
  }
}



