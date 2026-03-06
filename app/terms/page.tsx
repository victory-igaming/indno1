
import { strapiFetch,getStrapiMedia } from "../services/strapi";
import StarCard  from "../components/blocks/Starcard";
import ValueCard  from "../components/blocks/Valuecard";
import journeyCard  from "../components/blocks/Journeycard";
import EmployeCard  from "../components/blocks/Employecard";
import Faqcard  from "../components/blocks/Faqcard";

import ArticalCard  from "../components/blocks/ArticalCard";
import ImgLftCard  from "../components/blocks/ImgLftCard";
import ImgRthCard  from "../components/blocks/ImgRthCard";
import TipwarnCard  from "../components/blocks/TipwarnCard";
import TipsuccessCard  from "../components/blocks/TipsuccessCard";
import TipdangerCard  from "../components/blocks/TipdangerCard";

import qs from 'qs';

const COMPONENT_MAP = {
  "block.starcard": StarCard,
  "block.valuecard": ValueCard,
  "block.journey-card": journeyCard,
  "support.employecard": EmployeCard,
  "support.faq": Faqcard,
  "support.artical": ArticalCard,
  "support.image-left": ImgLftCard,
  "support.image-right": ImgRthCard,
  "block.tipwarn": TipwarnCard,
  "block.tipsuccess": TipsuccessCard,
  "block.tipdanger": TipdangerCard,  
};

export default  async function Terms() { 

  const query = qs.stringify({
      fields: ['title', 'moto', 'description', 'createdAt', 'publishedAt', 'updatedAt'],
      populate: {
        agreebody: { populate: '*' },     
      },
      status: 'published',
      locale: ['en'],
    }, { encodeValuesOnly: true });
    
    const finalUrl = `agreement?${query}`;

    const response = await strapiFetch(finalUrl);
      console.log(response);
      // 1. Check if response exists
  if (!response || !response.data) {
    return <div>Loading or Error...</div>; 
  }

    // 2. Access the fields from inside data
  const { title,moto, description, seourl, agreebody } = response.data;

  
 
 return (
          <>   

         {/* Hero Section */}
        <section className="hero-section">
          <h1 className="hero-title">{title}</h1>
          <p className="hero-subtitle">
           {moto}
          </p>
          <p className="last-updated">Last Updated: January 28, 2024</p>
        </section>

          <div className="intro-box">
            
            <div> 
                 {description?.map((block: any, idx: number) => (
                    <div key={idx} >
                      {block?.children.map((child: any, cIdx: number) => (
                        <p key={cIdx} className="intro-text mb-2 ml-4 p-4">{child.text}</p>
                      ))}
                    </div>
                  ))}               
            </div>
          
         </div> 

          {/* Terms Sections */}
          <div className="content-block">
             
           {agreebody.map((item: any) => {
            const Component = COMPONENT_MAP[item.__component as keyof typeof COMPONENT_MAP];
            return Component ? <Component key={`faq-${item.id}`} {...item} /> : null;
          })}
         
          </div>
          

        
          </>    
  )

}