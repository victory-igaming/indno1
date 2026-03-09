'use client';
import React, { useState, useEffect } from 'react';

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

import { BlocksRenderer } from '@strapi/blocks-react-renderer';


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


const query = qs.stringify({
      fields: ['title', 'description', 'seourl', 'createdAt', 'publishedAt', 'updatedAt'],
      pagination: {
      limit: 1,
      },
      populate: {
        image: { populate: '*' }, 
        faqbody: { populate: '*' },     
      },
      sort: ['updatedAt:desc'],
      status: 'published',
      locale: ['en'],
    }, { encodeValuesOnly: true });

  function TrandingFaq({ faqitem }: { faqitem: any[] }) { 
 
    // 
   // const [isOpen, setIsOpen] = useState(false);
    const [openFAQ, setOpenFAQ] = useState(null);

    const toggleFAQ = (index:any) => {
      setOpenFAQ(openFAQ === index ? null : index);
    };

  return (
    
    <div >
          <h2 className="faq-title">🕵️‍♂️ FAQ </h2>
         
       {faqitem.map((faq: any, index) => {
         return (
            <div key={index} className="faq-item">
                    
                    <div className="faq-question2"   onClick={() => {  toggleFAQ(index); } } >
                      <div className="question-text">{faq.name}</div>
                      <div className={`toggle-icon transform transition-transform ${openFAQ === index ? 'rotate-180' : ''} `}> ▼ </div>
                    </div>

                    <div className={`faq-answer ${openFAQ === index ? 'faq-answer-open' : ''}`}>
                    <div className="answer-text"> 
  { faq.description && (<BlocksRenderer 
        content={faq.description} 
        blocks={{
          paragraph: ({ children }) => <p className="text-gray-300 mb-4">{children}</p>,
          heading: ({ children, level }) => {
            if (level === 2) return <h2 className="text-xl font-bold text-white border-l-4 border-red-600 pl-3 my-4">{children}</h2>;
            return <h3 className="text-lg font-bold text-white mt-3">{children}</h3>;
          },
          list: ({ children, format }) => {
            if (format === 'ordered') return <ol className="list-decimal ml-6 space-y-2 text-gray-200">{children}</ol>;
            return <ul className="list-disc ml-6 space-y-2 text-gray-200">{children}</ul>;
          },
        }} 
      /> )}


                    </div>
                  </div>


          </div>
         )
        })}    
    </div>
  );
};

export default TrandingFaq;