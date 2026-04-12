
import { strapiFetch,getStrapiMedia } from "../services/strapi";
import NextImage from 'next/image';


import ArticalCard  from "../components/blocks/ArticalCard";
import ImgLftCard  from "../components/blocks/ImgLftCard";
import ImgRthCard  from "../components/blocks/ImgRthCard";
import Faqcard  from "../components/blocks/Faqcard";


import TipwarnCard  from "../components/blocks/TipwarnCard";
import TipsuccessCard  from "../components/blocks/TipsuccessCard";
import TipdangerCard  from "../components/blocks/TipdangerCard";
import GamesClient  from "../components/GamesClient";

import { Metadata } from 'next';
import qs from 'qs';

  // Fetch specific game data from Strapi using the slug
  const queryMata = qs.stringify({
    populate: '*',
  }, { encodeValuesOnly: true });

const gameId = `z8lphedystnf9m1ckuui19ka`;
const basePath = `sports`;


  export async function generateMetadata(): Promise<Metadata> {
  
    try {
        
        // const responseMata = await strapiFetch(`gamepages?${queryMata}`);
      const responseMata = await strapiFetch(`gamepages/${gameId}?${queryMata}`);     
      const dataMata = responseMata.data;  
      return {
        title: dataMata?.meta_title ? dataMata?.meta_title : process.env.META_TITLE,
        keywords: dataMata?.meta_tag ? dataMata?.meta_tag : process.env.META_KEYWD,
        description: dataMata?.meta_discrp ?  dataMata?.meta_discrp :  process.env.META_DISCRP,     
        verification: {
          google: dataMata?.google_tagid ?  dataMata?.google_tagid : process.env.META_GGTAG,
        },
        openGraph: {
          title: dataMata?.meta_title ?  dataMata?.meta_title  : process.env.META_TITLE,
          description: dataMata?.meta_discrp ? dataMata?.meta_discrp :  process.env.META_DISCRP, 
          images: dataMata?.meta_image?.url ? [dataMata.meta_image.url] : [],
        },
      };
    
      } catch (error) {
        console.error("Metadata fetch error:", error);
        return { title: "IND NO1 - Most Trusted Gaming &amp; Betting Website - Home" };
      }
  
  }
    

export default async function GameCate(props: { searchParams: Promise<{ page?: string; pageSize?: string }> }) { 

  // 2. Unwrap the promise
  const searchParams = await props.searchParams;

  // 3. Now you can safely access .page
  const currentPage = Number(searchParams?.page) || 1;
  const pagesize = Number(searchParams?.pageSize) || 10;


  const COMPONENT_MAP = {
    "support.artical": ArticalCard,
    "support.image-left": ImgLftCard,
    "support.image-right": ImgRthCard,
    "block.tipwarn": TipwarnCard,
    "block.tipsuccess": TipsuccessCard,
    "block.tipdanger": TipdangerCard,
    
  };

const query = qs.stringify({
  fields: ['pagename', 'seourl', 'description'], 
  populate: {
    image: { populate: '*' },
    gamebody: { populate: '*' },
    gamefaq: { populate: '*' },
    playgames: { populate: '*' },  // Removed nested pagination
    sponsors: { populate: '*' },
  },
  status: 'published',
  locale: 'en', // single locale
}, { encodeValuesOnly: true });

//const finalUrl = `gameplay?${query}`; // id=?id=3&
const finalUrl = `gamepages/${gameId}?${query}`;

//console.log(finalUrl);

    const response = await strapiFetch(finalUrl);
   // console.log(response);
    // 1. Check if response exists
if (!response || !response.data) {
  return <div>Loading or Error...</div>; 
}

// 2. Access the fields from inside data
const { pagename, description, image, gamebody, gamefaq, playgames, sponsors } = response.data;
//const pagination = response.meta.pagination;


const totalCount  = playgames?.length || 0;
const pagecount   =  pagesize ? Math.ceil(totalCount / pagesize) : 1;

const pagination  = { page: currentPage , pageCount: pagecount, total: totalCount , pageSize: pagesize };
//const myData    = response.data;

const comTitle = "Hot Indno 01 games";
const imageField = image;
const imageUrl = getStrapiMedia(imageField?.url);
const imageAlt = imageField?imageField.alternativeText:comTitle;
//console.log(playgames); 


/* */
 return (
          <>
         {/* Herogame Section */}
        <section className="herogame-section  max-h-100">

         {imageUrl && imageUrl !== "" ? (<img src={imageUrl} alt={imageAlt}    width={1360} height={414} />) : null}      
      
        </section>

          <div className="intro-box">
            <h1>{pagename}</h1>
            <p className="intro-text">
              {description}
            </p>
            
          </div>


           <main className="mx-auto w-full max-w-7xl px-1 py-4">
        <div className="grid gap-2 lg:grid-cols-12">   

         {/* Main Content */}
           
          <article className="article-content   lg:col-span-8">

        <div className="content-block">

      

          {gamebody.map((item: any,idx: any) => {
            const Component = COMPONENT_MAP[item.__component as keyof typeof COMPONENT_MAP];
            return Component ? <Component key={`aticl-${idx}`} {...item} /> : null;
          })}
        </div>

        
            
          </article> 

    {/* SIDEBAR */}
           <aside className="lg:col-span-4 ">

              {/* Slots */}
           <div className="live-section">

                <GamesClient  gameid={gameId} gamebody={playgames} pagination={pagination} currentPage={currentPage} basePath={basePath} />
                        
           </div>
          

         {/* FAQ List */}
         <div className="faqgame-list">
            <h2 className="section-title capitalize">FAQ </h2>
            {gamefaq.map((item: any) => {
              // ADD THE RETURN KEYWORD HERE
              return (
                <Faqcard 
                  key={item.id} 
                  id={item.id}
                  name={item.name} 
                  image={item.image} 
                  description={item.description} 
                />
              );
            })}           
          </div>  

            
            </aside>
          </div>


          

          </main>

            

         
         

         
          </>    
  )

}