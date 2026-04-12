"use client";

import { useState } from "react";


const COMPONENT_MAP = {
  "block.starcard": require("./blocks/Starcard").default,
  "block.valuecard": require("./blocks/Valuecard").default,
  "block.journey-card": require("./blocks/Journeycard").default,
  "support.employecard": require("./blocks/Employecard").default,
  "support.faq": require("./blocks/Faqcard").default,
  "support.artical": require("./blocks/ArticalCard").default,
  "support.image-left": require("./blocks/ImgLftCard").default,
  "support.image-right": require("./blocks/ImgRthCard").default,
  "block.tipwarn": require("./blocks/TipwarnCard").default,
  "block.tipsuccess": require("./blocks/TipsuccessCard").default,
  "block.tipdanger": require("./blocks/TipdangerCard").default,
};


export default function FAQClient({ categories, faqbody }: any) {
  const [activeCategory, setActiveCategory] = useState("all");

  const filteredFAQ = activeCategory === "all" ? faqbody: faqbody.filter((faq: any) => faq.faqtype?.id === activeCategory);
 // console.log("activeCategory : ",activeCategory);
 //console.log("categories : ",categories);
  //console.log("faqbody : ",faqbody);
  return (
    <>
      {/* Categories */}
      <div className="category-filter">
        <button
         className={` ${
            activeCategory === "all" ? "category-btn-active" : "category-btn"
          } `}
          
          onClick={() => setActiveCategory("all")}
        >
          All
        </button>

        {categories.map((cat: any) => (
          <button
            key={cat.id}
            className={`${
              activeCategory === cat.id ? "category-btn-active " : "category-btn"
            }`}
            onClick={() => setActiveCategory(cat.id)}
          >
            {cat.name}
          </button>
        ))}
      </div>

      {/* FAQ LIST */}
      <div className="faq-list">
        {filteredFAQ.map((item: any) => {
        const Component = COMPONENT_MAP[item.__component as keyof typeof COMPONENT_MAP];
          return Component ? (
            <Component key={item.id} {...item} />
          ) : null;
        })}
      </div>
    </>
  );
}