import { useState, useEffect, useMemo } from 'react';
import { strapiFetch,getStrapiMedia } from "@/services/strapi";
import Link from 'next/link';
import qs from 'qs';

  // Loading Category
  const queryCat = qs.stringify({
    pagination: {
    limit: 6,
    },
    populate: {
      gameicon: { populate: '*' },       
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


export default function LiveCasino() {

  const [data, setData] = useState<any[] | null>(null);
  const [error, setError] = useState(false);
  
    useEffect(() => {
            // AbortController is good practice for "one-time" fetches to prevent memory leaks
            const controller = new AbortController();
        
            async function fetchData() {
              try {
                  const qeryResponce = `playgames?${queryCat}`;
                  const  response = await strapiFetch(qeryResponce);
                
                if (response?.data) {
                  setData(response.data);
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




const liveCasinoList  = data;
//console.log(liveCasinoList); 


  return (
    <>
    <div className="live-section">

              <div className="section-header">
                <h3 className="section-title">♠️ Live Casino</h3>
               
              </div>
              <div className="casino-grid">
                {liveCasinoList.map((lcasino: any, kkids: any) => {

           const imageUrl = getStrapiMedia(lcasino.gameicon?.url);
           
            return(
            
            <div key={kkids} className="casino-item max-h-50" >
               <Link className="nav-link" href={`/playgame/${lcasino.seourl}`} key={lcasino.id} >
           
           {imageUrl && imageUrl !== "" ? (<img  src={imageUrl}  alt={lcasino.title}  width={200}  height={200}   />) : null} 
           </Link>
                  </div>) 
          })}


              </div>
            </div>
    
    </>
  )
}
