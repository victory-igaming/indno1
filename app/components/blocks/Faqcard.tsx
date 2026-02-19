"use client"; // This is required for useState
import { BlocksRenderer } from '@strapi/blocks-react-renderer';
import React, { useState } from 'react';

const Faqcard = ({ id, name, description }: any) => {
  const [isOpen, setIsOpen] = useState(false);

  return (
    
    <div className="faq-item">
      <div 
        className="faqgame-question flex justify-between items-center cursor-pointer p-4" 
        onClick={() => setIsOpen(!isOpen)}
      >
        <div className="question-text font-bold">{name}</div>
        <div className={`toggle-icon transform transition-transform ${isOpen ? 'rotate-180' : ''}`}> ▼ </div>
      </div>

      {/* Only show answer if isOpen is true */}
      {isOpen && (
        <div className={`faqgame-answer p-4 pb-2 ${isOpen ?'faq-answer-open':'' } `}>
          <div className="faqgame-answer-text">           
            
            <BlocksRenderer 
        content={description} 
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
      /> 
          </div>
        </div>
      )}
    </div>
  );
};

export default Faqcard;