"use client";

import { useState, useEffect, useMemo } from 'react';
import { strapiFetch,getStrapiMedia } from "@/services/strapi";
import qs from 'qs';
import Link from 'next/link';
import { motion } from "framer-motion";

  const liveProvider = [
    { id: '1', title: 'PLAY', image: '/images/play.png', icon: '🎰'},
    { id: '2', title: 'PG', image: '/images/pg.png', icon: '🎰'},
    { id: '3', title: 'M', image: '/images/m.png', icon: '🎰'},
    { id: '4', title: 'JILI', image: '/images/jili.png', icon: '🎰'},
    { id: '5', title: 'JDB', image: '/images/jdb.png', icon: '🎰'},
    { id: '6', title: 'Fire', image: '/images/H.png', icon: '🔥'},
    { id: '7', title: 'A', image: '/images/A.png', icon: '🎰'},
    { id: '8', title: 'cq9', image: '/images/cq9.png', icon: '🎰'},
    { id: '9', title: 'BG GAMING', image: '/images/pg.png', icon: '🎰'},
    { id: '10', title: 'Stars', image: '/images/start.png', icon: '⭐'},
    { id: '11', title: 'spribe', image: '/images/spribe.png', icon: '⭐'},
  ];
  // Loading providers
      const queryCat = qs.stringify({        
        populate: {
          logo: { populate: '*' },       
        },
        
        sort: ['updatedAt:desc'],
        status: 'published',
        locale: ['en'],
      }, { encodeValuesOnly: true });


const Marquee = ({ children, speed = 300 }: { children: React.ReactNode, speed?: number }) => {
  return (
    <div className="mx-auto max-w-full w-full overflow-hidden select-none bg-transparent">
      <motion.div
        className="flex shrink-0 items-center gap-10 pr-10"
        animate={{
          x: ["0%", "-100%"],
        }}
        transition={{
          duration: speed,
          ease: "linear",
          repeat: Infinity,
        }}
      >
        {/* Render children twice for a seamless loop */}
       <div className="flex shrink-0 items-center gap-10">{children}</div>
       <div className="flex shrink-0 items-center gap-10">{children}</div>
      </motion.div>
      
     
    </div>
  );
};

export default function Provider({Classname}: any) {

  const [data, setData] = useState<any[] | null>(null);
  const [error, setError] = useState(false);

    
      useEffect(() => {
        // AbortController is good practice for "one-time" fetches to prevent memory leaks
        const controller = new AbortController();
    
        async function fetchData() {
          try {
               const catfinalUrl = `sponsors?${queryCat}`;
          const  responsecat = await strapiFetch(catfinalUrl);
            
            if (responsecat?.data) {
              setData(responsecat.data);
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
  if (data.length === 0) return null;


  return (
         <>
       <Marquee speed={100}>
              {data.map((pravidor: any, kkids: any) => {

           const imageUrl = getStrapiMedia(pravidor.logo?.url);
            return(  
            
            <div key={kkids} className={`${Classname} shrink-0`}>
              <Link href={
                `/sponsors/${pravidor.seourl}`
              }>           
            {imageUrl && imageUrl !== "" ? (
              <img src={imageUrl}  alt={pravidor.name}   width={200}   height={80}/>
            ) : null}
            </Link>

            </div>
            
          )
            })}
       </Marquee>
      </>
    
  )
}
