"use client";

import NextImage from 'next/image';
import { getStrapiMedia } from "@/services/strapi";
import Carousel from 'react-multi-carousel';
import 'react-multi-carousel/lib/styles.css';
import React from 'react';

// ... (Your interfaces stay the same)

// 1. Define the child interfaces first
export interface StrapiImage {
  url: string;
  alternativeText?: string | null;
  width?: number;
  height?: number;
}

export interface MainSliderItem {
  id: number;
  name: string;
  description: string;
  image: StrapiImage;
}

// 2. Define the Props interface
interface HerobannerProps {
  slides: MainSliderItem[];
}

const Hero = ({ slides }: HerobannerProps) => {
  // Define how many items to show
  const responsive = {
    superLargeDesktop: { breakpoint: { max: 4000, min: 3000 }, items: 1 },
    desktop: { breakpoint: { max: 3000, min: 1024 }, items: 1 },
    tablet: { breakpoint: { max: 1024, min: 464 }, items: 1 },
    mobile: { breakpoint: { max: 464, min: 0 }, items: 1 }
  };

  return (
    <div className="hero-banner mx-auto max-w-7xl h-200">
      <Carousel 
        responsive={responsive}
        infinite={true}
        autoPlay={false}
        autoPlaySpeed={5000} // Normal slider speed (5 seconds)
        arrows={false} 
        showDots={false}
        ssr={true} // Important for Next.js
        itemClass="carousel-item"
      > 
        {slides.map((slide, index) => {
          const imageUrl = getStrapiMedia(slide.image?.url);
          if (!imageUrl) return null;

          return (
            <section key={slide.id || index} className="relative w-full  overflow-hidden">               

               {imageUrl && (
    <>
      {/* Background Image */}
      <NextImage 
                src={imageUrl} 
                alt={slide?.image?.alternativeText || slide?.name || "Hero Slide"} 
                width={1360} 
                height={414} 
                className="w-full h-auto object-cover"
                priority={index === 0} // Only priority for the first slide
                unoptimized
              />

      {/* Dark Overlay */}
      <div className="absolute inset-0 bg-black/50"></div>

      {/* Text Content */}
      <div className="absolute inset-0 flex flex-col justify-center items-start px-6 md:px-12 z-10 text-white slider-content">
        
        <h2 className="text-lg sm:text-2xl md:text-4xl font-bold mb-2  slider-name">
          {slide.name}
        </h2>

        <p className="text-xs sm:text-sm md:text-lg max-w-xl mb-4 slider-description">
          {slide.description}
        </p>

        <button className="bg-yellow-500 hover:bg-yellow-600 text-black font-semibold px-5 py-2 rounded-lg transition duration-300 slider-button">
          Play Now
        </button>

      </div>
    </>
  )}
            </section>
          );
        })}
      </Carousel>
    </div>
  );
};

export default Hero;