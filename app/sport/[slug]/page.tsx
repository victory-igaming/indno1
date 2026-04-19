
import { getBlogBySlug,getStrapiMedia,strapiFetch } from "../../services/strapi";
import NextImage from 'next/image';
import GameSlots from '../../components/blocks/GameSlots';

import ArticalCard  from "../../components/blocks/ArticalCard";
import ImgLftCard  from "../../components/blocks/ImgLftCard";
import ImgRthCard  from "../../components/blocks/ImgRthCard";
import Faqcard  from "../../components/blocks/Faqcard";


import TipwarnCard  from "../../components/blocks/TipwarnCard";
import TipsuccessCard  from "../../components/blocks/TipsuccessCard";
import TipdangerCard  from "../../components/blocks/TipdangerCard";

import qs from 'qs';
import { Metadata } from 'next';

const gameId = `ltu5pmvk3ks0ztofpmsj74ih`;

export async function generateMetadata({ 
  params 
}: { 
  params: Promise<{ slug: string }> 
}): Promise<Metadata> {
   

  const { slug } = await params;

    const queryMata = qs.stringify({
      filters: {
    seourl: { // Make sure this matches your Strapi field name (case-sensitive)
      $eq: slug,
    },
  },
    populate: '*',
  }, { encodeValuesOnly: true });


     try {
         
        // const responseMata = await strapiFetch(`gamepages?${queryMata}`);
        const responseMata = await strapiFetch(`footerpages?${queryMata}`);     
       // const dataMata = responseMata.data; 
        const dataMata = responseMata.data?.[0]; 
         return {
          title: dataMata?.meta_title ? dataMata?.meta_title : process.env.META_TITLE,
          keywords: dataMata?.meta_tag ? dataMata?.meta_tag : process.env.META_KEYWD,
          description: dataMata?.meta_discrp ?  dataMata?.meta_discrp :  process.env.META_DISCRP,     
          verification: {
            google: dataMata?.google_tagid ?  dataMata?.google_tagid : process.env.META_GGTAG,
          },
          openGraph: {
            title: dataMata?.meta_title ?  dataMata?.meta_title  : process.env.META_TITLE,
            description: dataMata?.meta_discrp,
            images: dataMata?.topbanner?.url ? [dataMata.topbanner.url] : [],
          },          
        };
     
       } catch (error) {
         console.error("Metadata fetch error:", error);
         return { title: "IND NO1 - Most Trusted Gaming &amp; Betting Website - Home" };
       }
   
   }


export default async function BlogDetails({ 
  params 
}: { 
  params: Promise<{ slug: string }> 
}) {



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
    topbanner : { populate: '*' },
    pagebody : { populate: '*' },    
  },
}, { encodeValuesOnly: true });

const finalUrl = `footerpages?${query}`;
//console.log(`response ${finalUrl}`);
const response = await strapiFetch(finalUrl);
//const response = await getBlogBySlug(slug);
//console.log(`response ${response}`);
  
if (!response || !response.data?.[0]) {
  return <div>Loading or Error...</div>; 
}
const { pagname, description, topbanner, pagebody} = response.data?.[0];
//const myData = response.data;

const comTitle = `Hot Indno 01 ${pagname}`;
const imageField = topbanner;
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
            <h1> {pagname} </h1>
            <p className="intro-text">
           {description} 
            </p>
            
          </div>

            {/* Main Content */}
          <article className="article-content">

        <div className="content-block">
          {pagebody.map((item: any,idx: any) => {
            const Component = COMPONENT_MAP[item.__component as keyof typeof COMPONENT_MAP];
            return Component ? <Component key={`aticl-${idx}`} {...item} /> : null;
          })}
        </div>
            
          </article> 


         
          </>    
  )

}