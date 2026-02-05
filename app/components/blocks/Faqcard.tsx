"use client"; // This is required for useState

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
            {description.map((block: any, idx: number) => (
              <div key={idx}>
                {block.children.map((child: any, cIdx: number) => (
                  <p key={cIdx} className="mb-2">{child.text}</p>
                ))}
              </div>
            ))}
          </div>
        </div>
      )}
    </div>
  );
};

export default Faqcard;