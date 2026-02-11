'use client';
import React, { useState } from "react";
import PhotoAlbum from "react-photo-album";
import Lightbox from "yet-another-react-lightbox";
import "yet-another-react-lightbox/styles.css";
import Image from 'next/image';

// Define your photos based on your Strapi data or local images
const photos = [
  { id: '1', title: 'ISO 3000', src: "/images/citi_1.jpg", width: 200, height: 200 },
  { id: '2', title: 'ISO 3001', src: "/images/citi_1.jpg", width: 200, height: 200 },
  { id: '3', title: 'ISO 3008', src: "/images/citi_1.jpg", width: 200, height: 200 },
  { id: '4', title: 'ISO 3010', src: "/images/citi_1.jpg", width: 200, height: 200 },
  { id: '5', title: 'ISO 3060', src: "/images/citi_1.jpg", width: 200, height: 200 },
  { id: '6', title: 'ISO 3080', src: "/images/citi_1.jpg", width: 200, height: 200 },
  { id: '7', title: 'ISO 3095', src: "/images/citi_1.jpg", width: 200, height: 200 },
  { id: '8', title: 'ISO 3300', src: "/images/citi_1.jpg", width: 200, height: 200 },
  // Add more photos here
];

// const galleryPhotos = strapiData.map((item: any) => ({
//   src: getStrapiMedia(item.image?.url),
//   width: item.image?.width || 800,
//   height: item.image?.height || 600,
//   category: item.category?.name || 'general'
// }));



export default function GallerySection() {

 const [index, setIndex] = useState(-1);
 const [isExpanded, setIsExpanded] = useState(false);

 const displayedPhotos = isExpanded ? photos : photos.slice(0, 4);

  return (
    <div className="bg-[#1a0f00] p-5 rounded-xl border border-[#3d2b00]" style={{marginTop:'30px'}}>       

      <div className="columns-2 md:columns-3 lg:columns-4 gap-4 space-y-4" style={{margin:'8px'}}>
            {photos.map((sponsor, i) => (
                <div key={i} className="break-inside-avoid" style={{marginTop:'4px',marginBottom:'6px'}} title={sponsor.title}>
                    <img  
                    src={sponsor.src}  
                    alt={sponsor.title} 
                    height={sponsor.height} 
                    className="w-full h-auto object-cover transition-transform duration-300 group-hover:scale-105 m-4"
                    />
                </div>
            ))}
      </div>
    </div>
  );
}