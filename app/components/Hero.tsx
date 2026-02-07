"use client";

import NextImage from 'next/image';

import Carousel from "framer-motion-carousel";

  const liveCarousel = [
    { id: '1', title: 'IndNO01 Live Casino Carousel', image: '/images/slider.jpg', icon: '🎰'},
    { id: '5', title: 'IndNO01 Live Casino Carousel', image: '/images/slider2.jpg', icon: '🎰'},
    { id: '2', title: 'IndNO01 Live Casino Carousel', image: '/images/slider3.png', icon: '🎰'},

   
  ];

export default function Hero() {
  return (
    <div className="hero-banner">
      <Carousel autoPlay={true} interval={3000} loop={true} >          
           {liveCarousel.map((item, i) => (
          <NextImage  src={item.image} 
              alt={item.title} 
              width={1360} 
              height={414} 
              key={i}
            />

             ))}

      </Carousel>
    

               {/* <div className="hero-overlay"></div> */}
            </div>
  )
}
