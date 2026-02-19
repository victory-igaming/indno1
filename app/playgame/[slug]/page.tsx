
import { getBlogBySlug,getStrapiMedia,strapiFetch } from "@/services/strapi";


import ArticalCard  from "@/components/blocks/ArticalCard";
import ImgLftCard  from "@/components/blocks/ImgLftCard";
import ImgRthCard  from "@/components/blocks/ImgRthCard";



import TipwarnCard  from "@/components/blocks/TipwarnCard";
import TipsuccessCard  from "@/components/blocks/TipsuccessCard";
import TipdangerCard  from "@/components/blocks/TipdangerCard";

import qs from 'qs';

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
    gamebanner: { populate: '*' },
    gameicon: { populate: '*' },
    gamecategoties: { populate: '*' },
    bodysponce: { populate: '*' },
   
  }
}, { encodeValuesOnly: true });

const finalUrl = `playgames?${query}`;
//console.log(`response ${finalUrl}`);
const response = await strapiFetch(finalUrl);
//const response = await getBlogBySlug(slug);
//console.log(`response ${response}`);
  
if (!response || !response.data?.[0]) {
  return <div>Loading or Error...</div>; 
}
const { gamename, description, gameicon, gamebanner, bodysponce} = response.data?.[0];
//const myData = response.data;

const comTitle = `Hot Indno 01 ${gamename}`;
const imageField = gamebanner?gamebanner:gameicon;
const imageUrl = getStrapiMedia(imageField?.url);
const imageAlt = imageField?imageField.alternativeText:comTitle;

/* */
 return (
          <>
         {/* Herogame Section */}
        <section className="herogame-section max-h-100">

          
          {imageUrl && imageUrl !== "" ? (<img src={imageUrl} alt={imageAlt}    width={1360} height={200} />) : null}       
      
        </section>

          <div className="intro-box">
            <h1> Indno1 Game Sponsors  {gamename}</h1>
            <p className="intro-text">
           {description}
            </p>
            
          </div>

            {/* Main Content */}
          <article className="article-content">

        <div className="content-block">
          {bodysponce.map((item: any,idx: any) => {
            const Component = COMPONENT_MAP[item.__component as keyof typeof COMPONENT_MAP];
            return Component ? <Component key={`aticl-${idx}`} {...item} /> : null;
          })}
        </div>
            
          </article> 



       
         
         

         
          </>    
  )

}