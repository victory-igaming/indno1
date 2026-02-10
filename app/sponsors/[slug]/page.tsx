import { strapiFetch } from "@/services/strapi";
import ArticalCard from "@/components/blocks/ArticalCard";
import ImgLftCard from "@/components/blocks/ImgLftCard";
import ImgRthCard from "@/components/blocks/ImgRthCard";
import TipwarnCard from "@/components/blocks/TipwarnCard";
import TipsuccessCard from "@/components/blocks/TipsuccessCard";
import TipdangerCard from "@/components/blocks/TipdangerCard";
import qs from "qs";

export const revalidate = 60;

/* ================================
   Component map (unchanged)
================================ */
const COMPONENT_MAP = {
  "support.artical": ArticalCard,
  "support.image-left": ImgLftCard,
  "support.image-right": ImgRthCard,
  "block.tipwarn": TipwarnCard,
  "block.tipsuccess": TipsuccessCard,
  "block.tipdanger": TipdangerCard,
};

/* ================================
   FIX 1: SAFE media resolver
   Matches YOUR Strapi JSON
================================ */
function resolveMedia(media: any) {
  if (!media || !media.url) {
    return null;
  }

  return {
    url: `${process.env.NEXT_PUBLIC_STRAPI_URL}${media.url}`,
    alt: media.alternativeText ?? "Indno1 Sponsor",
  };
}

export default async function SponsorDetails({
  params,
}: {
  params: { slug: string }; // FIX 2: params is NOT a Promise
}) {
  const { slug } = params;

  const query = qs.stringify(
    {
      filters: {
        seourl: { $eq: slug },
      },
      populate: "*",
    },
    { encodeValuesOnly: true },
  );

  const response = await strapiFetch(`sponsors?${query}`);
  const sponsor = response?.data?.[0];

  /* ================================
     FIX 3: HARD GUARD for build
  ================================ */
  if (!sponsor) {
    return <div>Not found</div>;
  }

  const { name, description, logo, heroimage, bodysponce } = sponsor;

  /* ================================
     FIX 4: heroimage fallback → logo
  ================================ */
  const image = resolveMedia(heroimage) ?? resolveMedia(logo);

  return (
    <>
      {/* Hero Section */}
      <section className="herogame-section max-h-100">
        {image && (
          <img src={image.url} alt={image.alt} width={1360} height={200} />
        )}
      </section>

      <div className="intro-box">
        <h1>Indno1 Game Sponsors {name}</h1>
        <p className="intro-text">{description}</p>
      </div>

      {/* Main Content */}
      <article className="article-content">
        <div className="content-block">
          {/* FIX 5: bodysponce ALWAYS safe */}
          {(bodysponce ?? []).map((item: any, idx: number) => {
            const Component =
              COMPONENT_MAP[item.__component as keyof typeof COMPONENT_MAP];
            return Component ? (
              <Component key={`block-${idx}`} {...item} />
            ) : null;
          })}
        </div>
      </article>
    </>
  );
}
