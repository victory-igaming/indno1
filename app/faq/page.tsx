

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
//import React, { useState } from 'react';

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



export default async function Faq() { 
 /*
    const [activeCategory, setActiveCategory] = useState('all');
  const [searchQuery, setSearchQuery] = useState('');
  const [openFAQ, setOpenFAQ] = useState(null);
*/

  
  const query = qs.stringify({
    fields: ['title', 'description', 'seourl', 'createdAt', 'publishedAt', 'updatedAt'],
    populate: {
      image: { populate: '*' }, 
      faqbody: { populate: '*' },     
    },
    status: 'published',
    locale: ['en'],
  }, { encodeValuesOnly: true });
  
  const finalUrl = `faq?${query}`;
  
  //console.log(finalUrl);
  
      const response = await strapiFetch(finalUrl);
      console.log(response);
      // 1. Check if response exists
  if (!response || !response.data) {
    return <div>Loading or Error...</div>; 
  }
  
  // 2. Access the fields from inside data
  const { title, description, seourl, faqbody } = response.data;
 //console.log(faqbody);

 // Loading Category
  const queryCat = qs.stringify({

    populate: {
      icon: { populate: '*' }, 
      
    },
    status: 'published',
    locale: ['en'],
  }, { encodeValuesOnly: true });

const catfinalUrl = `faqtypes?${queryCat}`;
const  responsecat = await strapiFetch(catfinalUrl);
const faqList  = responsecat.data;
//console.log(faqList);


const faqcategories = faqList.map((item: any) => ({
    id: item.id,
    name: item.title,
    category: item.gamecategoty?.pagename || 'General',
    icon: item?.icon.url ? getStrapiMedia(item.icon.url) : '/placeholder.jpg',
    slug: item.seoUrl
  }));
 


const faqalls = faqbody.map((fq: any) => ({
    id: fq.id,
    category: fq.name,
    question: fq.name,
    answer: fq.description,
   
  }));



 return (
          <>   

           {/* Hero Section */}
        <section className="hero-section">
          <div className="hero-content">
            <h1 className="hero-title">{title}</h1>
            <p className="hero-subtitle">
              {description}
            </p>
            <div className="search-box">
              <input
                type="text"
                className="search-input"
                placeholder="Search for answers..."
              
              />
              <span className="search-icon">🔍</span>
            </div>
          </div>
        </section>
                         
          {/* Stats Bar */}
          <div className="stats-bar">
            <div className="stats-card">
              <div className="stats-icon">📚</div>
              <div className="stats-number">{}+</div>
              <div className="stats-label">Questions Answered</div>
            </div>
            <div className="stats-card">
              <div className="stats-icon">⚡</div>
              <div className="stats-number">2 min</div>
              <div className="stats-label">Avg Response Time</div>
            </div>
            <div className="stats-card">
              <div className="stats-icon">💬</div>
              <div className="stats-number">24/7</div>
              <div className="stats-label">Support Available</div>
            </div>
            <div className="stats-card">
              <div className="stats-icon">😊</div>
              <div className="stats-number">98%</div>
              <div className="stats-label">Satisfaction Rate</div>
            </div>
          </div>

            {/* Categories */}
          <div className="categories-grid">
             {faqcategories.map((category: any, cidx: number) => (    
              <div key={`fcats-${category.id}`} className={`category-card `}>
                <div className="category-icon">
                  <img src={ category.icon??"" }  alt={category.name}  width={100} height={100} className=" rounded-lg "  />
                </div>
                <div className="category-name">{category.name}</div>
              </div>
            ))}
          </div>

          {/* FAQ List */}
          <div className="faq-list">
           {faqbody.map((item: any) => {
            const Component = COMPONENT_MAP[item.__component as keyof typeof COMPONENT_MAP];
            return Component ? <Component key={`faq-${item.id}`} {...item} /> : null;
          })}
          </div>

         
          {/* Contact CTA */}
         
                 
          </>    
  )

}