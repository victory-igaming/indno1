
import { strapiFetch,getStrapiMedia } from "../services/strapi";
import NextImage from 'next/image';
import GameSlots from '../components/blocks/GameSlots';

import ArticalCard  from "../components/blocks/ArticalCard";
import ImgLftCard  from "../components/blocks/ImgLftCard";
import ImgRthCard  from "../components/blocks/ImgRthCard";
import Faqcard  from "../components/blocks/Faqcard";


import TipwarnCard  from "../components/blocks/TipwarnCard";
import TipsuccessCard  from "../components/blocks/TipsuccessCard";
import TipdangerCard  from "../components/blocks/TipdangerCard";

import qs from 'qs';

export default async function GameCate() { 

  const gameId = `ltu5pmvk3ks0ztofpmsj74ih`;

  const COMPONENT_MAP = {
    "support.artical": ArticalCard,
    "support.image-left": ImgLftCard,
    "support.image-right": ImgRthCard,
    "block.tipwarn": TipwarnCard,
    "block.tipsuccess": TipsuccessCard,
    "block.tipdanger": TipdangerCard,
    
  };

const query = qs.stringify({
  fields: ['pagename', 'seourl','description'],
  populate: {
    image: { populate: '*' },
    gamebody: { populate: '*' },
    gamefaq: { populate: '*' },   
    playgames: { populate: '*' },  
    sponsors: { populate: '*' }, 
  },
  status: 'published',
  locale: ['en'],
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
//const myData = response.data;

const comTitle = "Hot Indno 01 games";
const imageField = image;
const imageUrl = getStrapiMedia(imageField?.url);
const imageAlt = imageField?imageField.alternativeText:comTitle;
//console.log(playgames);
  //console.log(gamefaq);
  //console.log(pagename); console.log(description);  console.log(image); console.log(gamefaq);console.log(gamebody);    


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

            {/* Main Content */}
          <article className="article-content">

        <div className="content-block">
          {gamebody.map((item: any,idx: any) => {
            const Component = COMPONENT_MAP[item.__component as keyof typeof COMPONENT_MAP];
            return Component ? <Component key={`aticl-${idx}`} {...item} /> : null;
          })}
        </div>
            
          </article> 


          {/* Slots */}
           <div className="live-section">
                         <div className="section-header">
                           <h3 className="section-title">🎰 Related Games</h3>
                          
                         </div>
                         <div className="casino-grid">
                              
                            {playgames.map((lcasino: any,idx: any) => {
                             
                              return <GameSlots key={`gmslt-${idx}`} title={lcasino.gamename} seourl={lcasino.seourl}  image={lcasino.gameicon}   />   ;
                            })}

                           
                         </div>
                       </div>

         {/* FAQ List */}
         <div className="faqgame-list">
            <h2 className="section-title capitalize">FAQ {pagename} Articles</h2>
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

         
         

         
          </>    
  )

}