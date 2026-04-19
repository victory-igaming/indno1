"use client";

import { useState, useEffect, useMemo } from 'react';
import qs from 'qs';
import { strapiFetch, getStrapiMedia } from "@/services/strapi";
import Carousel from "framer-motion-carousel";
import Link from 'next/link';

// 1. Memoize query to prevent unnecessary re-creations
const SPONSOR_QUERY = qs.stringify({
  populate: {
    logo: { populate: '*' },
  },
  sort: ['updatedAt:desc'],
  status: 'published',
  locale: ['en'],
}, { encodeValuesOnly: true });

export default function Sponsors() {
  const [data, setData] = useState<any[] | null>(null);
  const [error, setError] = useState(false);

  useEffect(() => {
    // AbortController is good practice for "one-time" fetches to prevent memory leaks
    const controller = new AbortController();

    async function fetchData() {
      try {
        const endpoint = `sponsors?${SPONSOR_QUERY}`;
        const response = await strapiFetch(endpoint);
        
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

  return (
    <div className="card hidden lg:block">
      <h3 className="card-title text-xl font-bold mb-4">Sponsors</h3>
      <div className="sponsors-grid">
        {/* Note: Ensure Carousel is compatible with React 19 Ref standards */}
        <Carousel 
          autoPlay={true} 
          interval={3000} 
          loop={true} 
          renderArrowLeft={() => null} 
          renderArrowRight={() => null} 
          renderDots={() => null}
        >
          {data.map((provider: any) => {
            const imageUrl = getStrapiMedia(provider.logo?.url);
            
            return (
              <div 
                key={provider.documentId || provider.id} 
                className="flex justify-center items-center h-full"
              >
                <Link href={
                `/sponsors/${provider.seourl}`
              }>
                {imageUrl && imageUrl !== "" ? (  
                <img 
                  src={imageUrl} 
                  alt={provider.title || "Sponsor"} 
                  width={200} 
                  height={100} 
                  className="object-contain"
                  // Next.js 16/React 19 optimization:
                  loading="lazy" 
                  fetchPriority="high"
                  
                />
				 ) : null} 
         </Link>
              </div>
            );
          })}
        </Carousel>
      </div>
    </div>
  );
}