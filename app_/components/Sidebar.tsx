'use client';

import React, { useState } from 'react';  
import Link from 'next/link';
 


const ChevronRight = () => (
  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
    <polyline points="9 18 15 12 9 6"></polyline>
  </svg>
);

  const sidebarItems = [
    { id: 'hot', label: 'Hot', icon: '🔥', href:'/hot' },
    { id: 'casino', label: 'Casino', icon: '🎰', href:'/casino' },
    { id: 'sports', label: 'Sports', icon: '⚽', href:'/sports' },
    { id: 'cockfight', label: 'Cock Fight', icon: '🐓', href:'/cockfight' },
    { id: 'live', label: 'Live', icon: '📺', href:'/live' },
    { id: 'crash', label: 'Crash', icon: '💥', href:'/crash' },
    { id: 'games', label: 'Games', icon: '🎮', href:'/games' },
    { id: 'lottery', label: 'Lottery', icon: '🎫', href:'/lottery' },
    { id: 'fishing', label: 'Fishing', icon: '🎣', href:'/fishing' },
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
                <span className="nav-icon">{item.icon}</span>
                {item.label}
                <span className="nav-chevron"><ChevronRight /></span>
              </button></Link> 
            ))}          
      </>
  )
}
