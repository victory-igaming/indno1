import { strapiFetch,getStrapiMedia } from "@/services/strapi";
import ArticalCard from "@/components/blocks/ArticalCard";
import ImgLftCard from "@/components/blocks/ImgLftCard";
import ImgRthCard from "@/components/blocks/ImgRthCard";
import TipwarnCard from "@/components/blocks/TipwarnCard";
import TipsuccessCard from "@/components/blocks/TipsuccessCard";
import TipdangerCard from "@/components/blocks/TipdangerCard";
import qs from "qs";

export const revalidate = 60;


export default async function SponsorDetails({ 
  params 
}: { 
  params: Promise<{ slug: string }> 
}) {

 const gameId = `ltu5pmvk3ks0ztofpmsj74ih`;

  const COMPONENT_MAP = {
    "support.artical": ArticalCard,
    "support.image-left": ImgLftCard,
    "support.image-right": ImgRthCard,
    "block.tipwarn": TipwarnCard,
    "block.tipsuccess": TipsuccessCard,
    "block.tipdanger": TipdangerCard,    
  };
const { slug } = await params;
 console.log(slug);

const query = qs.stringify({
  filters: {
    seourl: { // Make sure this matches your Strapi field name (case-sensitive)
      $eq: encodeURIComponent(slug),
    },
  },
  populate: {
    heroimage : { populate: '*' },
    bodysponce : { populate: '*' },    
  },
}, { encodeValuesOnly: true });

const finalUrl = `sponsors?${query}`;
console.log(`response ${finalUrl}`);
const response = await strapiFetch(finalUrl);

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

const comTitle = `Hot Indno 01 ${name}`;
const imageField = heroimage;
const imageUrl = getStrapiMedia(imageField?.url);
const imageAlt = imageField?imageField.alternativeText:comTitle;

  return (
    <>
      {/* Hero Section */}
      <section className="herogame-section max-h-100">
          {imageUrl && imageUrl !== "" ? (<img src={imageUrl} alt={imageAlt}    width={1360} height={200} />) : null}    
      </section>

      <div className="intro-box">
        <h1>{name}</h1>
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
