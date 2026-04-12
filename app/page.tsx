
import { strapiFetch,getStrapiMedia } from "@/services/strapi";
import qs from 'qs';

import { Metadata } from 'next';

import HomeClient from "@/components/pages/HomeClient";

type Props = {
  params: { slug: string };
};

  // Fetch specific game data from Strapi using the slug
  const queryMata = qs.stringify({
    populate: '*',
  }, { encodeValuesOnly: true });

export async function generateMetadata(): Promise<Metadata> {

  try {
    
    const responseMata = await strapiFetch(`mastersetting?${queryMata}`);
    const dataMata = responseMata.data;

    return {
      title: dataMata?.title || "IND NO1 - Most Trusted Gaming &amp; Betting Website - Home",
      keywords: dataMata?.meta_keyword,
      description: dataMata?.meta_discription,     
      verification: {
        google: dataMata?.google_tagid || "zUiqPXfp8HqGluXdEn54TLZzkqpVLD7EGRL5Am_1pTA",
      },
      openGraph: {
        title: dataMata?.title,
        description: dataMata?.meta_discription,
        images: dataMata?.meta_image?.url ? [dataMata.meta_image.url] : [],
      },
    };

  } catch (error) {
    console.error("Metadata fetch error:", error);
    return { title: "IND NO1 - Most Trusted Gaming &amp; Betting Website - Home" };
  }


}

      
export default async function Home() { 

 
   const responseMata = await strapiFetch(`landingpage?${queryMata}`);
  const dataMata = responseMata.data;

return (
          <>                 
             <HomeClient  pageTitle={dataMata?.meta_tag}  description={dataMata?.meta_discrp}  /> 
          </>    
  )
  //return <GamingLandingPage />
}



