"use client";

import NextImage from 'next/image';
import { strapiFetch,getStrapiMedia } from "@/services/strapi";
import Carousel from "framer-motion-carousel";

  const liveCarousel = [
    { id: '1', title: 'IndNO01 Live Casino Carousel', image: '/images/slider.jpg', icon: '🎰'},
    { id: '5', title: 'IndNO01 Live Casino Carousel', image: '/images/slider2.jpg', icon: '🎰'},
    { id: '2', title: 'IndNO01 Live Casino Carousel', image: '/images/slider3.png', icon: '🎰'},

   
  ];

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
  image: StrapiImage; // This matches your JSON
}

interface HerobannerProps {
  slides: MainSliderItem[];
}

const Hero = ({ slides }: HerobannerProps) => {
   console.log("slides",slides); 
  return (    
   
    <div className="hero-banner ">
      <Carousel autoPlay={true} interval={3000} loop={true} >   

        {slides.map((slide: any, sids: any) => {        
        const imageUrl = getStrapiMedia(slide.image?.url);        
        return(  
      <section className="max-h-100 overflow-hidden">              
       <NextImage  src={imageUrl??""} 
              alt={slide?.alternativeText || slide?.title || "Sport image"} 
              width={1360} 
              height={414} 
              key={sids}
              unoptimized
            />         
       </section> 
        ) 
      })}   

      </Carousel>
    

               {/* <div className="hero-overlay"></div> */}
            </div>
  )
}


export default Hero;