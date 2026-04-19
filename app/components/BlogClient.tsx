"use client";

import { useState } from "react";
import Link from 'next/link';
import BlogList from '../components/blocks/BlogPost';
import {  getStrapiMedia } from "../services/strapi";

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


const ChevronRight = () => (
  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
    <polyline points="9 18 15 12 9 6"></polyline>
  </svg>
);

const ChevronLeft = () => (
  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
    <polyline points="15 18 9 12 15 6"></polyline>
  </svg>
);


export default function BlogsClient({ categories, blogbody, pagination, currentPage }: any) {
  const [activeCategory, setActiveCategory] = useState("all");

  const filteredBlogs = activeCategory === "all" ? blogbody: blogbody.filter((faq: any) => faq.gamecategoty?.id === activeCategory);
//console.log("activeCategory : ",activeCategory);
//console.log("categories : ",categories);
//console.log("blogbody : ",blogbody);
  return (
    <>
      {/* Categories */}
      <div className="category-filter">
        <button
         className={` ${
            activeCategory === "all" ? "category-btn-active" : "category-btn"
          } `}
          
          onClick={() => setActiveCategory("all")}
          suppressHydrationWarning
        >
          All
        </button>

        {categories.map((cat: any) => (
          <button
            key={cat.id}
            className={`${
              activeCategory === cat.id ? "category-btn-active " : "category-btn"
            }`}
            suppressHydrationWarning
            onClick={() => setActiveCategory(cat.id)}
          >
            {cat.title}
          </button>
        ))}
      </div>

      {/* FAQ LIST */}
     

          {/* All Posts */}
          <div>
            <h2 className="section-title">Latest Articles</h2>
            <div className="blog-grid">
                 {filteredBlogs.map((post: any,idx: any) => {
                 // console.log(`gamecategoty`); console.log(post.gamecategoty);
				 const imagePath = post.image?.data?.attributes?.url || post.image?.url;
				 const imageUrl = imagePath ? getStrapiMedia(imagePath) : '/placeholder-image.jpg';
                 //const imageUrl = getStrapiMedia(post?.image.url);
                  return (                

                      <div key={post.id} className="blog-card">
                  <Link className="nav-link" href={`/blog/${post.seoUrl}`} key={post.id} >
                  <div className="blog-image overflow-hidden">
                    
                    {imageUrl && imageUrl !== "" ? ( 
				  <img  src={imageUrl}  alt={post.heading}   width={600} height={100}  />
				   ) : null} 
                    
                    
                    </div>
                  <div className="blog-content">
                    <span className="post-category"> 
                    {post.gamecategoty?.pagename || "Uncategorized"}   
                    {/* / {post.id} */}
                                         
                    </span>
                    <h3 className="blog-title">{post.heading}</h3>
                   <p className="blog-excerpt">{post.description?.split(" ").slice(0, 20).join(" ")}...</p>
                    {  <div className="post-meta">
                       
                      <span>⏱️  {new Date(post.updatedAt).toLocaleDateString("en-US", {
    month: "long",
  })}, {new Date(post.updatedAt).getDate()}, {new Date(post.updatedAt).getFullYear()}</span>
                    </div> /*<span>👤 {post.author}</span>*/}
                  </div></Link>
                </div>
                  )
                  
              })}
              
            </div>

            <div className="pagination-controls" style={{ display: 'flex', gap: '10px', marginTop: '20px', alignItems: 'center' }}>
  
            {/* Previous Button */}
            <Link 
              href={`/blog?page=${currentPage - 1}`}
              className={`btn pagination-Link ${currentPage <= 1 ? 'disabled' : ''}`}
              style={{ pointerEvents: currentPage <= 1 ? 'none' : 'auto', opacity: currentPage <= 1 ? 0.5 : 1 }}
            >
              <ChevronLeft /> Previous
            </Link>

            <span className="pagination-curent">Page {pagination.page} of {pagination.pageCount}</span>

            {/* Next Button */}
            <Link 
              href={`/blog?page=${currentPage + 1}`}
              className={`btn pagination-Link ${currentPage >= pagination.pageCount ? 'disabled' : ''}`}
              style={{ pointerEvents: currentPage >= pagination.pageCount ? 'none' : 'auto', opacity: currentPage >= pagination.pageCount ? 0.5 : 1 }}
            >
              Next <ChevronRight />
            </Link>
          </div>
          </div>
    </>
  );
}