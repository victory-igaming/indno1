"use client";

import { useState, useEffect, useMemo } from 'react';
import { strapiFetch,getStrapiMedia } from "@/services/strapi";
import qs from 'qs';

import Herobanner from '@/components/Hero';
import Featuredgames from '@/components/FeaturedGames';
import Sports from '@/components/Sports';
import Featuredsports from '@/components/FeaturedSports';
import CasinoBets from '@/components/CasinoBets';
import LiveCasino from '@/components/LiveCasino';
import TrandingGame from '@/components/TrandingGame';
import TrandingSport from '@/components/TrandingSport';
import Slots from '@/components/Slots';
import TrandingFaq from '@/components/TrandingFaq';
import Provider from '@/components/Provider';



  // Loading providers
  const queryHome = qs.stringify({        
    populate: {
      sportbody: { populate: '*' },    
      mainslider: { populate: '*' },   
      Featuregame: { populate: '*' }, 
      faqbody: { populate: '*' }, 
    },    
    sort: ['updatedAt:desc'],
    status: 'published',
    locale: ['en'],
  }, { encodeValuesOnly: true });

      
export default function Home() { 

 
  const [data, setData] = useState<any>(null);
  const [error, setError] = useState(false);

  useEffect(() => {
          // AbortController is good practice for "one-time" fetches to prevent memory leaks
          const controller = new AbortController();
      
          async function fetchData() {
            try {
				
                const qeryResponce = `landingpage?${queryHome}`;
                const  response = await strapiFetch(qeryResponce);
              
              if (response?.data) {
                setData(response);
              }

            } catch ({err}:any) {
              if (err.name !== 'AbortError') {
                console.error("Fetch error:", err);
                setError(true);
              }
            }
          }
      
          fetchData();
          return () => controller.abort();
        }, []);
  
  
    // 2. Handling states for React 19
    if (error) return null; // Or a simple error message
    if (!data) return <div className="p-4 text-center">Loading...</div>;

    const sliderImages = data?.data.mainslider;
    const sportbodyImages = data?.data.sportbody;
    const featuregame = data?.data.Featuregame;
    const faqgame = data?.data.faqbody;
    //const { title, mainslider, sportbody} = homeList?.data;
    //console.log("data : ", data?.data); 
    //console.log(" mainslider : ", sliderImages);
    //console.log(" sportbody : ", sportbodyImages);
    //console.log(" featuregame : ", featuregame);

return (
          <>

                  {/* Hero Banner */}
                  <Herobanner slides={sliderImages || []}/>

                  {/* Featured Games */}
                  <Featuredgames ftrgame={featuregame || []}/>

                  {/* Casino & Sports */}
                  <Sports />

                  {/* Live Casino */}
                  <TrandingGame/>

                  {/* Live Casino */}
                  <TrandingSport/>

                  {/* Live Casino */}
                  <LiveCasino/>                   

                  {/* Live Sports */}
                  <CasinoBets />
                    
                  {/* Slots */}
                  <Slots/>

                  {/* TrandingFaq */}
                  {                    
                    faqgame && ( <TrandingFaq faqitem={faqgame}/>)
                  }                 

                  {/* Provider Logos */}
                  <div className="providers">
                    <Provider Classname="provider-logo"/> 
                  </div>
                      

          </>    
  )
  //return <GamingLandingPage />
}



