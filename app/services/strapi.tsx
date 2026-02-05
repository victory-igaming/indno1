
import qs from 'qs';
/*
export async function strapiFetch(path: string, queryObj: object = {}) {
  const API_URL = "http://localhost:1337/";
  const queryString = qs.stringify(queryObj, { encodeValuesOnly: true });
  const url = `${API_URL}/api/${path}${queryString ? `?${queryString}` : ''}`;
  console.log(url);
  const res = await fetch(url);
  return res.json();
}
*/
const STRAPI_URL = process.env.NEXT_PUBLIC_STRAPI_URL || 'http://localhost:1337';
const baseUrl = "http://localhost:1337";

// app/services/strapi.tsx
export async function strapiFetch(path: string) {
  const baseUrl = "http://localhost:1337";
  // 1. Get the base URL from env or fallback to localhost

  
  // 2. Ensure the URL is absolute and includes /api/
  const fullUrl = `${baseUrl}/api/${path}`;

  try {
    const res = await fetch(fullUrl, { cache: 'no-store' });

    if (!res.ok) {
      throw new Error(`HTTP error! status: ${res.status}`);
    }

    return await res.json();
  } catch (error) {
    console.error("Could not fetch from Strapi:", error);
    return null;
  }
}


export async function strapiUrlImage(path: string) {
  const baseUrl = "http://localhost:1337";
  // 1. Get the base URL from env or fallback to localhost

  
  // 2. Ensure the URL is absolute and includes /api/
  const fullUrl = `${baseUrl}/api/${path}`;

  try {
    const res = await fetch(fullUrl, { cache: 'no-store' });

    if (!res.ok) {
      throw new Error(`HTTP error! status: ${res.status}`);
    }

    return await res.json();
  } catch (error) {
    console.error("Could not fetch from Strapi:", error);
    return null;
  }
}


export function getStrapiMedia(url: string | null) {
  const baseUrl = "http://localhost:1337";
  if (url == null) return null;

  // If it's already a full URL (e.g. hosted on S3/Cloudinary), return it
  if (url.startsWith("http") || url.startsWith("//")) return url;

  // Otherwise, prepend the local Strapi URL
  return `${baseUrl}${url}`;
}


export async function getBlogByDocumentId(docId: string) {
  const baseUrl = "http://localhost:1337";
  const res = await fetch(`${baseUrl}/api/blogs/${docId}?populate=deep`); 
  // Note: Using ?populate=deep or specific populate fields to get blogbody and faqBody
  const json = await res.json();
  return json.data;
}


export async function getBlogBySlug(slug: string) {
  const baseUrl = "http://localhost:1337";
  // We use a filter to find the post where the slug matches

// Try this specific syntax format
  //const query = `/api/blogs?filters[slug][$eq]=${slug}&populate=*`;
  const query = `/api/blogs?filters[seoUrl][$eq]=${encodeURIComponent(slug)}&populate=*`;
  
  const res = await fetch(`${baseUrl}${query}`, { cache: 'no-store' });
 console.log(res);
  if (!res.ok) {
    const errorData = await res.json();
    console.error("Strapi Error Details:", errorData); // This will tell you EXACTLY what is wrong
    return null;
  }

  const json = await res.json();
  return json;
}

export async function getAllCategories() {
  const baseUrl = process.env.NEXT_PUBLIC_STRAPI_URL || 'http://localhost:1337';
  
  // We use populate=* if you want to count how many blogs are in each category
  const res = await fetch(`${baseUrl}/api/gamepages?populate=*`, { 
    cache: 'no-store' 
  });

  if (!res.ok) {
    throw new Error('Failed to fetch categories');
  }

  const json = await res.json();
  return json.data; // This returns the array of categories
}


/*
export async function strapiFetch(
  endpoint: string,
  options: RequestInit = {}
) {
  const res = await fetch(`http://localhost:1337/api/posts/`, {
    headers: {
      Authorization: `Bearer ${TOKEN}`,
      "Content-Type": "application/json",
    },
    next: { revalidate: 60 }, // ISR
    ...options,
  });
   console.log(`${API_URL}/api/${endpoint}`);
  console.log(res);
  if (!res.ok) {
    throw new Error("Failed to fetch Strapi API");
  }
  console.log(res.json());
  return await res.json();
}
*/

/*
export async function strapiFetchM(
  path,
  { method = 'GET', body, headers = {}, credentials = 'include' } = {}
) {
  const res = await fetch(
    `${process.env.NEXT_PUBLIC_STRAPI_URL}${path}`,
    {
      method,
      credentials,
      headers: {
        'Content-Type': 'application/json',
        ...headers,
      },
      body: body ? JSON.stringify(body) : undefined,
      cache: 'no-store',
    }
  );

  const data = await res.json();

  if (!res.ok) {
    throw {
      status: res.status,
      message: data?.error?.message || 'Strapi request failed',
      data,
    };
  }

  return data;
}
*/