'use client';

import React, { useState } from 'react';  
import Link from 'next/link';
 import NextImage from 'next/image';


const ChevronRight = () => (
  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
    <polyline points="9 18 15 12 9 6"></polyline>
  </svg>
);

  const sidebarItems = [
    { id: 'hot', label: 'Hot', icon: '🔥', image: '/sideicon/hot.png' , href:'/hot' },
    { id: 'slots', label: 'Slots', icon: '🔥', image: '/sideicon/slots.png' , href:'/slots' },
    { id: 'casino', label: 'Casino', icon: '🎰', image: '/sideicon/casino.png' , href:'/casino' },
    { id: 'sports', label: 'Sports', icon: '⚽', image: '/sideicon/sports.png' , href:'/sports' },
    { id: 'cockfight', label: 'Cock Fight', icon: '🐓', image: '/sideicon/cockfighting.png' , href:'/cockfight' },
    { id: 'live', label: 'Live', icon: '📺', image: '/sideicon/live.png' , href:'/live' },
    { id: 'crash', label: 'Crash', icon: '💥', image: '/sideicon/crash.png' , href:'/crash' },
    { id: 'games', label: 'Games', icon: '🎮', image: '/sideicon/games.png' , href:'/games' },
    { id: 'lottery', label: 'Lottery', icon: '🎫', image: '/sideicon/lottery.png' , href:'/lottery' },
    { id: 'fishing', label: 'Fishing', icon: '🎣', image: '/sideicon/fishing.png' , href:'/fishing' },
  ];    

export default function Sidebar() {

  const [activeSection, setActiveSection] = useState('hot');
  
  return (
  
      <>
     {/* Navigation */}
            {sidebarItems.map((item) => (
              <Link href={item.href} key={item.id}><button
                key={item.id}
                onClick={() => setActiveSection(item.id)}
                className={`nav-btn ${activeSection === item.id ? 'nav-btn-active' : 'nav-btn-inactive'}`}
              >
                
  {item.image && item.image !== "" ? ( <NextImage  src={item.image}  alt={item.label}  width={30}  height={30}   unoptimized loading="lazy" /> ) : null}

                {/* <span className="nav-icon">{item.icon}</span> */}
                {item.label}
                <span className="nav-chevron"><ChevronRight /></span>
              </button></Link> 
            ))}          
      </>
  )
}
