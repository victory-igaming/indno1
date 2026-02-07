
import NextImage from 'next/image';
  
import { strapiFetch,getStrapiMedia } from "../services/strapi";
import GameSlots from '../components/blocks/GameSlots';

import ArticalCard  from "../components/blocks/ArticalCard";
import ImgLftCard  from "../components/blocks/ImgLftCard";
import ImgRthCard  from "../components/blocks/ImgRthCard";
import Faqcard  from "../components/blocks/Faqcard";


import TipwarnCard  from "../components/blocks/TipwarnCard";
import TipsuccessCard  from "../components/blocks/TipsuccessCard";
import TipdangerCard  from "../components/blocks/TipdangerCard";

import qs from 'qs';
  
  const ChevronRight = () => (
  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
    <polyline points="9 18 15 12 9 6"></polyline>
  </svg>
);

const ChevronLeft = () => (
  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
    <polyline points="15 18 9 12 15 6"></polyline>
  </svg>
);

  
  const liveCasino = [
    { id: '1', title: 'Live Casino', image: '/images/32.png', icon: '🎰'},
    { id: '2', title: 'Live Casino', image: '/images/35_en.png', icon: '🎰'},
    { id: '3', title: 'Live Casino', image: '/images/42.png', icon: '🎰'},
    { id: '4', title: 'Live Casino', image: '/images/48_en.png', icon: '🎰'},
    { id: '5', title: 'Live Casino', image: '/images/75.png', icon: '🎰'},
    { id: '6', title: 'Live Casino', image: '/images/110.png', icon: '🎰'},
   
  ];


  

export default async function LiveCasino() {

 // Loading Category
  const queryCat = qs.stringify({
    pagination: {
    limit: 6,
    },
    populate: {
      iamge: { populate: '*' },       
    },
    filters: {
      gamecategoties: {
        seourl: {
          $eq: 'live',
        },
      },
    },
    sort: ['updatedAt:desc'],
    status: 'published',
    locale: ['en'],
  }, { encodeValuesOnly: true });

const catfinalUrl = `playgames?${queryCat}`;
const  responsecat = await strapiFetch(catfinalUrl);
const liveCasinoList  = responsecat.data;
//console.log(liveCasinoList); 


  return (
    <>
    <div className="live-section">

              <div className="section-header">
                <h3 className="section-title">♠️ Live Casino</h3>
               
              </div>
              <div className="casino-grid">
                {liveCasinoList.map((lcasino: any, kkids: any) => {

           const imageUrl = getStrapiMedia(lcasino.iamge?.url);
           
            return(
            
            <div key={kkids} className="casino-item max-h-50" >
           <img  src={imageUrl??""}  alt={lcasino.title}  width={200}  height={200}   />
                  </div>) 
          })}


              </div>
            </div>
    
    </>
  )
}
