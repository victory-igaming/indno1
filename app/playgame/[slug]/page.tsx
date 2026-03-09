
import { getBlogBySlug,getStrapiMedia,strapiFetch } from "@/services/strapi";
import GameSlots from '@/components/blocks/GameSlots';

import ArticalCard  from "@/components/blocks/ArticalCard";
import ImgLftCard  from "@/components/blocks/ImgLftCard";
import ImgRthCard  from "@/components/blocks/ImgRthCard";



import TipwarnCard  from "@/components/blocks/TipwarnCard";
import TipsuccessCard  from "@/components/blocks/TipsuccessCard";
import TipdangerCard  from "@/components/blocks/TipdangerCard";

import qs from 'qs';
import { data } from "framer-motion/client";

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
 //console.log(slug);

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
const { gamename, description, gameicon, gamebanner,gamecategoties, bodysponce} = response.data?.[0];
//const myData = response.data;

const comTitle = `Hot Indno 01 ${gamename}`;
const imageField = gamebanner?gamebanner:gameicon;
const imageUrl = getStrapiMedia(imageField?.url);
const imageAlt = imageField?imageField.alternativeText:comTitle;


  const queryCat = qs.stringify({
    pagination: {
    limit: 20,
    },
    populate: {
      gameicon: { populate: '*' },       
    },
    filters: {
      gamecategoties: {
        pagename: {
          $eq: gamecategoties?.pagename || 'hot',
        },
      },
    },
    sort: ['updatedAt:desc'],
    status: 'published',
    locale: ['en'],
  }, { encodeValuesOnly: true });

const qeryResponce = `playgames?${queryCat}`;
console.log(" qeryResponce : ",qeryResponce);
const  catresponse = await strapiFetch(qeryResponce);
console.log(" catresponse : ",catresponse);
let  playgames = catresponse?.data || [];
playgames = playgames.sort(() => Math.random() - 0.5);

// const categoryGames = response.data.filter((gamecat: any) => Array.isArray(gamecat.gamecategoties) ? gamecat.gamecategoties.some((c: any) => c.id === gamecategoties.id)
// : gamecat.gamecategoties?.id === gamecategoties.id  );

/* */
 return (
          <>
         {/* Herogame Section */}
        <section className="herogame-section max-h-100">
                    
          {imageUrl && imageUrl !== "" ? (<img src={imageUrl} alt={imageAlt}    width={1360} height={200} />) : null}       
      
        </section>

         <div className="intro-box">
            <h1>{gamename}</h1>
            <p className="intro-text">
              {description}
            </p>            
          </div>

         <main className="mx-auto w-full max-w-7xl px-1 py-4">
        <div className="grid gap-2 lg:grid-cols-12">         

        {/* Main Content */}
        <article className="article-content  lg:col-span-9">

            <div className="content-block">
              {bodysponce.map((item: any,idx: any) => {
                const Component = COMPONENT_MAP[item.__component as keyof typeof COMPONENT_MAP];
                return Component ? <Component key={`aticl-${idx}`} {...item} /> : null;
              })}
            </div>
            
          </article> 


           {/* SIDEBAR */}
           <aside className="lg:col-span-3 ">
            
             <div className="section-header">
                <h3 className="section-title">🔥 Related Game</h3>
               
              </div>
            
                <div className="flex flex-wrap justify-center mx-5 my-5 gap-6">
                      {playgames?.map((game: any) => {
                    //console.log(" Game List :: ", game.gameicon.url);
                      //Wconst imageField = game?.gameicon;
                      //const imageUrl = getStrapiMedia(imageField?.url);
                  
                      return (
                      <div key={`game-${game.id}`} className="w-1/3 flex justify-center">
                      <GameSlots  key={`game-${game.id}`} title={game.gamename}  seourl={game.seourl} image={game.gameicon} 
                      />
                      </div>
                      )}
                  
                      
              )}
             
              </div>
           </aside>
       
         </div>
         </main>

         
          </>    
  )

}