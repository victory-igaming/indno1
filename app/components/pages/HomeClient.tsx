
"use client"

import { useState, useEffect, useMemo } from 'react';
import { strapiFetch,getStrapiMedia } from "@/services/strapi";
import qs from 'qs';

import Herobanner from '@/components/Hero';
import Featuredgames from '@/components/FeaturedGames';
import Sports from '@/components/Sports';

import CasinoBets from '@/components/CasinoBets';
import LiveCasino from '@/components/LiveCasino';
import TrandingGame from '@/components/TrandingGame';
import TrandingSport from '@/components/TrandingSport';
import Slots from '@/components/Slots';
import TrandingFaq from '@/components/TrandingFaq';
import Provider from '@/components/Provider';

import HomeMore from '@/components/Homore';

import SpinWheelModal  from '@/components/pages/SpinWheelModal';


// Define Props to receive Title and Description from the Server Page
interface HomeClientProps {
  pageTitle?: string;
  description?: string;
}

  // Loading providers
  const queryHome = qs.stringify({        
        populate: {
          sportbody: { populate: '*' },    
          mainslider: { populate: '*' },   
          Featuregame: { populate: '*' }, 
          faqbody: { populate: '*' }, 
          textbody: { populate: '*' }, 
        },    
        sort: ['updatedAt:desc'],
        status: 'published',
        locale: ['en'],
  }, { encodeValuesOnly: true });


export default function HomeClient({ pageTitle, description }: HomeClientProps){

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
   const hblockgame = data?.data.textbody;
    //const { title, mainslider, sportbody} = homeList?.data;
    //console.log("data : ", data?.data); 
    //console.log(" mainslider : ", sliderImages);
    //console.log(" sportbody : ", sportbodyImages);
    //console.log(" featuregame : ", featuregame);
    console.log(" hblockgame : ", hblockgame);

    const prizes = ["₹10", "₹50", "₹20", "₹50", "₹5", "₹300", "₹50", "₹100", "Tryagin"];


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
                  
                  {/* HomeMore */}
                  <HomeMore  hblockgame ={hblockgame} />
                  
                  {/* TrandingFaq */}
                  {                    
                    faqgame && ( <TrandingFaq faqitem={faqgame}/>)
                  }                 

                  {/* Provider Logos */}
                  <div className="providers">
                    <Provider Classname="provider-logo"/> 
                  </div> 
                  
                  {/* SpinWheelModal  */}
                  <SpinWheelModal  />
        </>
    )
}
