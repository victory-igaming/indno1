'use client';

import React, { useState } from 'react';

import Headers from './Header';


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

export default function GamingLandingPage() {
  const [activeSection, setActiveSection] = useState('hot');

  const sidebarItems = [
    { id: 'hot', label: 'Hot', icon: '🔥' },
    { id: 'casino', label: 'Casino', icon: '🎰' },
    { id: 'sports', label: 'Sports', icon: '⚽' },
    { id: 'cockfight', label: 'Cock Fight', icon: '🐓' },
    { id: 'live', label: 'Live', icon: '📺' },
    { id: 'crash', label: 'Crash', icon: '💥' },
    { id: 'games', label: 'Games', icon: '🎮' },
    { id: 'lottery', label: 'Lottery', icon: '🎫' },
    { id: 'fishing', label: 'Fishing', icon: '🎣' },
  ];

  const sponsors = [
    { name: 'Sponsor 1', color: '#00D9A5' },
    { name: 'Sponsor 2', color: '#FF4444' },
    { name: 'Sponsor 3', color: '#FFB800' },
  ];

  const liveRacing = [
    { team1: 'veniam dolore', team2: 'veniam dolore', score1: '7-8', score2: '7-8', time: '70:50' },
    { team1: 'veniam dolore', team2: 'veniam dolore', score1: '7-8', score2: '7-8', time: '70:50' },
    { team1: 'veniam dolore', team2: 'veniam dolore', score1: '7-8', score2: '7-8', time: '70:50' },
  ];

  const lotteryDraws = [
    { title: 'veniam dolore', draw: '70/50', prize: '$ 25,000.00', countdown: '00h : 00m : 00s' },
    { title: 'veniam dolore', draw: '70/50', prize: '$ 25,000.00', countdown: '00h : 00m : 00s' },
    { title: 'veniam dolore', draw: '70/50', prize: '$ 25,000.00', countdown: '00h : 00m : 00s' },
    { title: 'veniam dolore', draw: '70/50', prize: '$ 25,000.00', countdown: '00h : 00m : 00s' },
  ];

 const styles = `
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    .gaming-container {
      min-height: 100vh;
      background: linear-gradient(to bottom, #2a1810, #1f120a, #0f0a06);
      font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', sans-serif;
    }

    .header {
      background: linear-gradient(to right, #3d2415, #2a1810);
      border-bottom: 1px solid rgba(202, 138, 4, 0.3);
      padding: 0.75rem 1.5rem;
    }

    .header-content {
      max-width: 1600px;
      margin: 0 auto;
      display: flex;
      align-items: center;
      justify-content: space-between;
    }

    .logo-section {
      display: flex;
      align-items: center;
      gap: 0.75rem;
    }

    .logo {
      width: 3rem;
      height: 3rem;
      background: linear-gradient(to bottom right, #ca8a04, #b91c1c);
      border-radius: 0.5rem;
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: 900;
      color: white;
      font-size: 1.25rem;
      box-shadow: 0 10px 15px rgba(0, 0, 0, 0.3);
    }

    .logo-text {
      color: white;
      font-weight: bold;
      font-size: 0.875rem;
    }

    .logo-subtitle {
      color: #fbbf24;
      font-size: 0.75rem;
      font-weight: 600;
      line-height: 1.2;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 1rem;
    }

    .search-box {
      position: relative;
    }

    .search-input {
      background: rgba(0, 0, 0, 0.3);
      color: white;
      padding: 0.5rem 2.5rem 0.5rem 1rem;
      border-radius: 0.5rem;
      border: 1px solid rgba(202, 138, 4, 0.4);
      width: 16rem;
      outline: none;
    }

    .search-input:focus {
      border-color: #eab308;
    }

    .search-icon {
      position: absolute;
      right: 0.75rem;
      top: 50%;
      transform: translateY(-50%);
      color: #eab308;
    }

    .play-now-btn {
      background: linear-gradient(to right, #eab308, #ca8a04);
      color: black;
      font-weight: bold;
      padding: 0.625rem 2rem;
      border-radius: 0.5rem;
      border: none;
      cursor: pointer;
      box-shadow: 0 10px 15px rgba(0, 0, 0, 0.3);
      transition: all 0.2s;
    }

    .play-now-btn:hover {
      background: linear-gradient(to right, #fbbf24, #eab308);
      transform: scale(1.05);
    }

    .flag-icon {
      width: 2.5rem;
      height: 2.5rem;
      border-radius: 0.5rem;
      border: 2px solid #ca8a04;
      background: linear-gradient(to bottom right, #2563eb, #dc2626);
    }

    .main-layout {
      max-width: 1600px;
      margin: 0 auto;
      display: flex;
      gap: 1rem;
      padding: 1rem;
    }

    .sidebar {
      width: 12rem;
      display: flex;
      flex-direction: column;
      gap: 0.5rem;
    }

    .card {
      background: linear-gradient(to bottom right, #3d2415, #2a1810);
      border-radius: 0.75rem;
      padding: 1rem;
      border: 1px solid rgba(202, 138, 4, 0.3);
    }

    .card-title {
      color: #fbbf24;
      font-weight: bold;
      margin-bottom: 0.75rem;
      font-size: 0.875rem;
    }

    .sponsors-grid {
      display: flex;
      gap: 0.5rem;
      align-items: center;
      justify-content: center;
    }

    .sponsor-box {
      width: 2.5rem;
      height: 2.5rem;
      border-radius: 0.5rem;
    }

    .dots {
      display: flex;
      justify-content: center;
      gap: 0.25rem;
      margin-top: 0.75rem;
    }

    .dot {
      width: 0.5rem;
      height: 0.5rem;
      border-radius: 9999px;
    }

    .dot-active {
      background: #eab308;
    }

    .dot-inactive {
      background: #4b5563;
    }

    .nav-btn {
      width: 100%;
      text-align: left;
      padding: 0.75rem 1rem;
      border-radius: 0.5rem;
      font-weight: 600;
      font-size: 0.875rem;
      border: none;
      cursor: pointer;
      display: flex;
      align-items: center;
      gap: 0.5rem;
      transition: all 0.2s;
    }

    .nav-btn-active {
      background: linear-gradient(to right, #ca8a04, #a16207);
      color: black;
      box-shadow: 0 10px 15px rgba(0, 0, 0, 0.3);
    }

    .nav-btn-inactive {
      background: linear-gradient(to right, #3d2415, #2a1810);
      color: #fef3c7;
      border: 1px solid rgba(202, 138, 4, 0.2);
    }

    .nav-btn-inactive:hover {
      background: linear-gradient(to right, rgba(202, 138, 4, 0.4), rgba(161, 98, 7, 0.4));
    }

    .nav-icon {
      font-size: 1.125rem;
    }

    .nav-chevron {
      margin-left: auto;
    }

    .bonus-card {
      background: linear-gradient(to bottom right, #ca8a04, #a16207);
      border-radius: 0.75rem;
      padding: 1rem;
      text-align: center;
      border: 2px solid #fbbf24;
      box-shadow: 0 20px 25px rgba(0, 0, 0, 0.5);
      margin-top: 1.5rem;
    }

    .bonus-title {
      color: #1f120a;
      font-weight: bold;
      font-size: 0.875rem;
      margin-bottom: 0.25rem;
    }

    .bonus-percent {
      font-size: 3rem;
      font-weight: 900;
      color: white;
      font-family: Impact, sans-serif;
      margin-bottom: 0.25rem;
    }

    .bonus-badges {
      display: flex;
      gap: 0.5rem;
      justify-content: center;
      flex-wrap: wrap;
      margin-top: 0.75rem;
    }

    .bonus-badge {
      font-size: 0.75rem;
      background: rgba(255, 255, 255, 0.2);
      padding: 0.25rem 0.5rem;
      border-radius: 0.25rem;
    }

    .main-content {
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 1rem;
    }

    .hero-banner {
      position: relative;
      height: 16rem;
      border-radius: 1rem;
      overflow: hidden;
      border: 2px solid rgba(202, 138, 4, 0.4);
      box-shadow: 0 25px 50px rgba(0, 0, 0, 0.5);
    }

    .hero-bg {
      position: absolute;
      inset: 0;
      background: linear-gradient(to right, #581c87, #1e3a8a, #a16207);
    }

    .hero-overlay {
      position: absolute;
      inset: 0;
      background-image: 
        radial-gradient(circle at 20% 50%, rgba(255, 215, 0, 0.2) 0%, transparent 50%),
        radial-gradient(circle at 80% 50%, rgba(138, 43, 226, 0.2) 0%, transparent 50%);
    }

    .hero-content {
      position: relative;
      height: 100%;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 0 3rem;
    }

    .hero-cards {
      display: flex;
      gap: 1rem;
    }

    .hero-card {
      width: 4rem;
      height: 12rem;
      background: linear-gradient(to bottom, rgba(220, 38, 38, 0.8), rgba(234, 88, 12, 0.8));
      border-radius: 0.5rem;
      border: 2px solid rgba(255, 255, 255, 0.2);
    }

    .hero-text {
      text-align: right;
    }

    .hero-title {
      font-size: 3.75rem;
      font-weight: 900;
      color: #fbbf24;
      font-family: Georgia, serif;
      text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.8);
      margin-bottom: 0.5rem;
    }

    .hero-subtitle {
      font-size: 2.25rem;
      font-weight: bold;
      color: white;
      text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
      margin-bottom: 0.5rem;
    }

    .hero-bonus {
      font-size: 1.875rem;
      font-weight: bold;
      color: #fde68a;
      text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
    }

    .hero-dots {
      position: absolute;
      bottom: 1rem;
      left: 50%;
      transform: translateX(-50%);
      display: flex;
      gap: 0.5rem;
    }

    .hero-dot {
      width: 0.75rem;
      height: 0.75rem;
      border-radius: 9999px;
    }

    .games-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 1rem;
    }

    .game-card {
      position: relative;
      height: 8rem;
      border-radius: 0.75rem;
      overflow: hidden;
      border: 2px solid rgba(202, 138, 4, 0.5);
      box-shadow: 0 10px 15px rgba(0, 0, 0, 0.3);
      cursor: pointer;
      transition: transform 0.2s;
    }

    .game-card:hover {
      transform: scale(1.05);
    }

    .game-bg {
      position: absolute;
      inset: 0;
    }

    .game-overlay {
      position: absolute;
      inset: 0;
      background: rgba(0, 0, 0, 0.2);
      transition: background 0.2s;
    }

    .game-card:hover .game-overlay {
      background: rgba(0, 0, 0, 0.1);
    }

    .game-title {
      position: relative;
      height: 100%;
      display: flex;
      align-items: center;
      justify-content: center;
      color: white;
      font-weight: 900;
      font-size: 1.5rem;
      text-align: center;
      text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
      white-space: pre-line;
    }

    .section-grid {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      gap: 1rem;
    }

    .section-card {
      background: linear-gradient(to bottom right, #3d2415, #2a1810);
      border-radius: 0.75rem;
      padding: 1.5rem;
      border: 1px solid rgba(202, 138, 4, 0.3);
    }

    .section-title {
      color: #fbbf24;
      font-weight: bold;
      font-size: 1.25rem;
      margin-bottom: 1rem;
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }

    .section-content {
      display: flex;
      align-items: center;
      justify-content: space-between;
    }

    .section-text {
      color: #d1d5db;
      font-size: 0.875rem;
    }

    .section-icon {
      width: 4rem;
      height: 4rem;
      border-radius: 9999px;
    }

    .racing-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 1rem;
    }

    .racing-card {
      background: linear-gradient(to bottom right, #3d2415, #2a1810);
      border-radius: 0.75rem;
      padding: 1rem;
      border: 1px solid rgba(202, 138, 4, 0.3);
      text-align: center;
      cursor: pointer;
      transition: border-color 0.2s;
    }

    .racing-card:hover {
      border-color: rgba(234, 179, 8, 0.6);
    }

    .racing-title {
      color: #fbbf24;
      font-weight: bold;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 0.5rem;
    }

    .live-section {
      background: linear-gradient(to bottom right, #3d2415, #2a1810);
      border-radius: 0.75rem;
      padding: 1.5rem;
      border: 1px solid rgba(202, 138, 4, 0.3);
    }

    .section-header {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-bottom: 1rem;
    }

    .section-actions {
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }

    .all-btn {
      background: #ca8a04;
      color: black;
      padding: 0.25rem 1rem;
      border-radius: 0.5rem;
      border: none;
      font-weight: bold;
      font-size: 0.875rem;
      cursor: pointer;
    }

    .all-btn:hover {
      background: #eab308;
    }

    .nav-arrow {
      color: #eab308;
      cursor: pointer;
      transition: color 0.2s;
    }

    .nav-arrow:hover {
      color: #fbbf24;
    }

    .live-grid {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 1rem;
    }

    .live-card {
      background: rgba(0, 0, 0, 0.4);
      border-radius: 0.5rem;
      padding: 1rem;
      border: 1px solid rgba(202, 138, 4, 0.2);
    }

    .live-header {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-bottom: 0.75rem;
    }

    .live-tag {
      color: #fbbf24;
      font-weight: bold;
      font-size: 0.875rem;
      display: flex;
      align-items: center;
      gap: 0.25rem;
    }

    .live-badge {
      background: #dc2626;
      color: white;
      font-size: 0.75rem;
      padding: 0.25rem 0.5rem;
      border-radius: 9999px;
      display: flex;
      align-items: center;
      gap: 0.25rem;
    }

    .team-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-bottom: 0.5rem;
    }

    .team-info {
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }

    .team-icon {
      width: 1.5rem;
      height: 1.5rem;
      border-radius: 0.25rem;
    }

    .team-name {
      color: white;
      font-size: 0.875rem;
    }

    .team-score {
      background: #ca8a04;
      color: black;
      padding: 0.25rem 0.5rem;
      border-radius: 0.25rem;
      font-size: 0.75rem;
      font-weight: bold;
    }

    .match-time {
      text-align: center;
      color: #fbbf24;
      font-weight: bold;
      font-size: 1.125rem;
      margin-top: 0.5rem;
    }

    .casino-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 0.75rem;
    }

    .casino-item {
      aspect-ratio: 1;
      border-radius: 0.75rem;
      overflow: hidden;
      border: 2px solid rgba(202, 138, 4, 0.4);
      cursor: pointer;
      transition: all 0.2s;
    }

    .casino-item:hover {
      border-color: #eab308;
      transform: scale(1.05);
    }

    .lottery-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 1rem;
    }

    .lottery-card {
      background: linear-gradient(to bottom right, rgba(161, 98, 7, 0.4), rgba(113, 63, 18, 0.4));
      border-radius: 0.75rem;
      padding: 1rem;
      border: 2px solid rgba(202, 138, 4, 0.6);
    }

    .lottery-header {
      display: flex;
      align-items: flex-start;
      gap: 0.5rem;
      margin-bottom: 0.75rem;
    }

    .lottery-flag {
      width: 2rem;
      height: 2rem;
      background: white;
      border-radius: 0.25rem;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .lottery-info {
      flex: 1;
    }

    .lottery-title {
      color: white;
      font-weight: bold;
      font-size: 0.875rem;
    }

    .lottery-draw {
      color: #fbbf24;
      font-size: 0.75rem;
    }

    .lottery-prize {
      background: #ca8a04;
      color: black;
      text-align: center;
      padding: 0.5rem;
      border-radius: 0.5rem;
      font-weight: bold;
      margin-bottom: 0.5rem;
    }

    .lottery-btn {
      width: 100%;
      background: linear-gradient(to right, #eab308, #ca8a04);
      color: black;
      font-weight: bold;
      padding: 0.5rem;
      border-radius: 0.5rem;
      border: none;
      cursor: pointer;
      margin-bottom: 0.5rem;
    }

    .lottery-btn:hover {
      background: linear-gradient(to right, #fbbf24, #eab308);
    }

    .lottery-next {
      text-align: center;
      color: #9ca3af;
      font-size: 0.75rem;
      margin-bottom: 0.25rem;
    }

    .lottery-countdown {
      text-align: center;
      color: #fbbf24;
      font-family: monospace;
      font-weight: bold;
    }

    .providers {
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 1.5rem;
      padding: 1.5rem;
    }

    .provider-logo {
      color: #eab308;
      font-weight: bold;
      font-size: 1.5rem;
      opacity: 0.7;
      cursor: pointer;
      transition: opacity 0.2s;
    }

    .provider-logo:hover {
      opacity: 1;
    }

    .footer {
      background: linear-gradient(to right, #1a0f08, #0f0a06);
      border-top: 1px solid rgba(202, 138, 4, 0.3);
      margin-top: 2rem;
    }

    .footer-content {
      max-width: 1600px;
      margin: 0 auto;
      padding: 3rem 1.5rem;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: repeat(5, 1fr);
      gap: 2rem;
      margin-bottom: 2rem;
    }

    .footer-column h4 {
      color: #fbbf24;
      font-weight: bold;
      margin-bottom: 1rem;
    }

    .footer-links {
      list-style: none;
    }

    .footer-links li {
      color: #9ca3af;
      font-size: 0.875rem;
      margin-bottom: 0.5rem;
      cursor: pointer;
      transition: color 0.2s;
    }

    .footer-links li:hover {
      color: #fbbf24;
    }

    .social-icons {
      display: flex;
      flex-wrap: wrap;
      gap: 0.5rem;
    }

    .social-icon {
      width: 2.5rem;
      height: 2.5rem;
      background: rgba(161, 98, 7, 0.3);
      border-radius: 9999px;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      transition: background 0.2s;
      color: #fbbf24;
    }

    .social-icon:hover {
      background: #ca8a04;
    }

    .support-btn {
      position: fixed;
      bottom: 1.5rem;
      right: 1.5rem;
      width: 3.5rem;
      height: 3.5rem;
      background: linear-gradient(to bottom right, #eab308, #ca8a04);
      border-radius: 9999px;
      box-shadow: 0 25px 50px rgba(0, 0, 0, 0.5);
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 1.5rem;
      border: none;
      cursor: pointer;
      transition: all 0.2s;
    }

    .support-btn:hover {
      background: linear-gradient(to bottom right, #fbbf24, #eab308);
      transform: scale(1.1);
    }

    @media (max-width: 1024px) {
      .main-layout {
        flex-direction: column;
      }
      
      .sidebar {
        width: 100%;
      }

      .games-grid,
      .racing-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .casino-grid {
        grid-template-columns: repeat(3, 1fr);
      }

      .live-grid,
      .lottery-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .footer-grid {
        grid-template-columns: repeat(2, 1fr);
      }
    }

    @media (max-width: 640px) {
      .header-actions {
        flex-direction: column;
        gap: 0.5rem;
      }

      .search-input {
        width: 100%;
      }

      .games-grid,
      .racing-grid,
      .casino-grid,
      .live-grid,
      .lottery-grid {
        grid-template-columns: 1fr;
      }

      .footer-grid {
        grid-template-columns: 1fr;
      }
    }
  `;

  return (
    <>
   <style>{styles}</style>
      <div className="gaming-container">
        {/* Header */}
       <Headers />

        <div className="main-layout">
          {/* Sidebar */}
          <aside className="sidebar">
            {/* Sponsors */}
            <div className="card">
              <h3 className="card-title">Sponsors</h3>
              <div className="sponsors-grid">
                {sponsors.map((sponsor, i) => (
                  <div key={i} className="sponsor-box" style={{ backgroundColor: sponsor.color }}></div>
                ))}
              </div>
              <div className="dots">
                <div className="dot dot-active"></div>
                <div className="dot dot-inactive"></div>
                <div className="dot dot-inactive"></div>
              </div>
            </div>

            {/* Navigation */}
            {sidebarItems.map((item) => (
              <button
                key={item.id}
                onClick={() => setActiveSection(item.id)}
                className={`nav-btn ${activeSection === item.id ? 'nav-btn-active' : 'nav-btn-inactive'}`}
              >
                <span className="nav-icon">{item.icon}</span>
                {item.label}
                <span className="nav-chevron"><ChevronRight /></span>
              </button>
            ))}

            {/* Deposit Bonus */}
            <div className="bonus-card">
              <div className="bonus-title">Get</div>
              <div className="bonus-percent">100%</div>
              <div className="bonus-title">Deposit Bonus</div>
              <div className="bonus-badges">
                <span className="bonus-badge">PicPay</span>
                <span className="bonus-badge">Pay</span>
                <span className="bonus-badge">VISA</span>
                <span className="bonus-badge">ePay</span>
              </div>
            </div>

            {/* Application */}
            <div className="card">
              <h3 className="card-title">Application</h3>
              <div style={{ display: 'flex', gap: '0.5rem' }}>
                <div style={{ flex: 1, background: 'black', borderRadius: '0.5rem', padding: '0.5rem', textAlign: 'center' }}>
                  <div style={{ color: 'white', fontSize: '0.75rem' }}>Google Play</div>
                </div>
                <div style={{ flex: 1, background: 'black', borderRadius: '0.5rem', padding: '0.5rem', textAlign: 'center' }}>
                  <div style={{ color: 'white', fontSize: '0.75rem' }}>App Store</div>
                </div>
              </div>
            </div>
          </aside>

          {/* Main Content */}
          <main className="main-content">
            {/* Hero Banner */}
            <div className="hero-banner">
              <div className="hero-bg">
                <div className="hero-overlay"></div>
              </div>
              <div className="hero-content">
                <div className="hero-cards">
                  {[1, 2, 3, 4, 5].map((i) => (
                    <div key={i} className="hero-card"></div>
                  ))}
                </div>
                <div className="hero-text">
                  <h1 className="hero-title">Cricket Peak</h1>
                  <h2 className="hero-subtitle">Daily Glory</h2>
                  <div className="hero-bonus">Bonus 25%</div>
                </div>
              </div>
              <div className="hero-dots">
                {[1, 2, 3, 4].map((i) => (
                  <div key={i} className={`hero-dot ${i === 1 ? 'dot-active' : 'dot-inactive'}`}></div>
                ))}
              </div>
            </div>

            {/* Featured Games */}
            <div className="games-grid">
              {['AVIATOR', 'BIG BASS\nBONANZA', 'SHARE DRAGONS\nFISHING', 'AVIATOR'].map((game, i) => (
                <div key={i} className="game-card">
                  <div className={`game-bg`} style={{
                    background: i === 0 || i === 3 ? 'linear-gradient(to bottom right, #dc2626, #ea580c)' :
                                i === 1 ? 'linear-gradient(to bottom right, #2563eb, #06b6d4)' :
                                'linear-gradient(to bottom right, #7c3aed, #ec4899)'
                  }}>
                    <div className="game-overlay"></div>
                  </div>
                  <div className="game-title">{game}</div>
                </div>
              ))}
            </div>

            {/* Casino & Sports */}
            <div className="section-grid">
              <div className="section-card">
                <h3 className="section-title">🎰 CASINO</h3>
                <div className="section-content">
                  <p className="section-text">veniam dolore consectetur lorem<br/>aliqua ad dolor minim adipiscing</p>
                  <div className="section-icon" style={{ background: 'linear-gradient(to bottom right, #10b981, #059669)' }}></div>
                </div>
              </div>
              <div className="section-card">
                <h3 className="section-title">⚽ SPORTS</h3>
                <div className="section-content">
                  <p className="section-text">veniam dolore consectetur lorem<br/>aliqua ad dolor minim adipiscing</p>
                  <div className="section-icon" style={{ background: 'linear-gradient(to bottom right, #eab308, #d97706)' }}></div>
                </div>
              </div>
            </div>

            {/* Racing Tabs */}
            <div className="racing-grid">
              {[1, 2, 3, 4].map((i) => (
                <div key={i} className="racing-card">
                  <div className="racing-title">⭐ RACING</div>
                </div>
              ))}
            </div>

            {/* Live Sports */}
            <div className="live-section">
              <div className="section-header">
                <h3 className="section-title">⚡ Live Sports</h3>
                <div className="section-actions">
                  <button className="all-btn">ALL</button>
                  <span className="nav-arrow"><ChevronLeft /></span>
                  <span className="nav-arrow"><ChevronRight /></span>
                </div>
              </div>
              <div className="live-grid">
                {liveRacing.map((race, i) => (
                  <div key={i} className="live-card">
                    <div className="live-header">
                      <span className="live-tag">🏇 RACING</span>
                      <span className="live-badge">⚫ Live</span>
                    </div>
                    <div>
                      <div className="team-row">
                        <div className="team-info">
                          <div className="team-icon" style={{ background: 'white' }}></div>
                          <span className="team-name">{race.team1}</span>
                        </div>
                        <span className="team-score">{race.score1}</span>
                      </div>
                      <div className="team-row">
                        <div className="team-info">
                          <div className="team-icon" style={{ background: '#dc2626' }}></div>
                          <span className="team-name">{race.team2}</span>
                        </div>
                        <span className="team-score">{race.score2}</span>
                      </div>
                      <div className="match-time">{race.time}</div>
                    </div>
                  </div>
                ))}
              </div>
            </div>

            {/* Live Casino */}
            <div className="live-section">
              <div className="section-header">
                <h3 className="section-title">♠️ Live Casino</h3>
                <div className="section-actions">
                  <button className="all-btn">ALL</button>
                  <span className="nav-arrow"><ChevronLeft /></span>
                  <span className="nav-arrow"><ChevronRight /></span>
                </div>
              </div>
              <div className="casino-grid">
                {[1, 2, 3, 4, 5, 6].map((i) => (
                  <div key={i} className="casino-item">
                    <div style={{
                      width: '100%',
                      height: '100%',
                      background: i === 1 ? 'linear-gradient(to bottom right, #2563eb, #06b6d4)' :
                                  i === 2 ? 'linear-gradient(to bottom right, #7c3aed, #ec4899)' :
                                  i === 3 ? 'linear-gradient(to bottom right, #dc2626, #ea580c)' :
                                  i === 4 ? 'linear-gradient(to bottom right, #ca8a04, #d97706)' :
                                  i === 5 ? 'linear-gradient(to bottom right, #b91c1c, #7f1d1d)' :
                                  'linear-gradient(to bottom right, #059669, #047857)'
                    }}></div>
                  </div>
                ))}
              </div>
            </div>

            {/* Slots */}
            <div className="live-section">
              <div className="section-header">
                <h3 className="section-title">🎰 Slots</h3>
                <div className="section-actions">
                  <button className="all-btn">ALL</button>
                  <span className="nav-arrow"><ChevronLeft /></span>
                  <span className="nav-arrow"><ChevronRight /></span>
                </div>
              </div>
              <div className="casino-grid">
                {[1, 2, 3, 4, 5, 6].map((i) => (
                  <div key={i} className="casino-item">
                    <div style={{
                      width: '100%',
                      height: '100%',
                      background: i === 1 ? 'linear-gradient(to bottom right, #dc2626, #ea580c)' :
                                  i === 2 ? 'linear-gradient(to bottom right, #ca8a04, #d97706)' :
                                  i === 3 ? 'linear-gradient(to bottom right, #2563eb, #06b6d4)' :
                                  i === 4 ? 'linear-gradient(to bottom right, #7c3aed, #ec4899)' :
                                  i === 5 ? 'linear-gradient(to bottom right, #059669, #047857)' :
                                  'linear-gradient(to bottom right, #b91c1c, #7f1d1d)'
                    }}></div>
                  </div>
                ))}
              </div>
            </div>

            {/* Upcoming Lottery Draw */}
            <div className="live-section">
              <div className="section-header">
                <h3 className="section-title">🎫 Upcoming Lottery Draw</h3>
                <div className="section-actions">
                  <button className="all-btn">ALL</button>
                  <span className="nav-arrow"><ChevronLeft /></span>
                  <span className="nav-arrow"><ChevronRight /></span>
                </div>
              </div>
              <div className="lottery-grid">
                {lotteryDraws.map((draw, i) => (
                  <div key={i} className="lottery-card">
                    <div className="lottery-header">
                      <div className="lottery-flag">
                        <span style={{ color: '#dc2626', fontWeight: 'bold' }}>🇬🇧</span>
                      </div>
                      <div className="lottery-info">
                        <div className="lottery-title">{draw.title}</div>
                        <div className="lottery-draw">{draw.draw}</div>
                      </div>
                    </div>
                    <div className="lottery-prize">{draw.prize}</div>
                    <button className="lottery-btn">Bet Now</button>
                    <div className="lottery-next">Next Draw Starts in</div>
                    <div className="lottery-countdown">{draw.countdown}</div>
                  </div>
                ))}
              </div>
            </div>

            {/* Provider Logos */}
            <div className="providers">
              {['PLAY', 'PG', 'M', 'JILI', 'JDB', '🔥', '♠', 'CQ9', 'BG GAMING', '⭐'].map((logo, i) => (
                <div key={i} className="provider-logo">{logo}</div>
              ))}
            </div>
          </main>
        </div>

        {/* Footer */}
        <footer className="footer">
          <div className="footer-content">
            <div className="footer-grid">
              <div className="footer-column">
                <h4>Casino</h4>
                <ul className="footer-links">
                  <li>Casino Home</li>
                  <li>Live</li>
                  <li>New Releases</li>
                  <li>Recommended</li>
                  <li>Table Game</li>
                  <li>Black Jack</li>
                  <li>Poker</li>
                  <li>Baccarat</li>
                  <li>Sports</li>
                </ul>
              </div>
              <div className="footer-column">
                <h4>Sports</h4>
                <ul className="footer-links">
                  <li>Sports Home</li>
                  <li>Live</li>
                  <li>Rules</li>
                  <li>Sport Betting Insights</li>
                </ul>
              </div>
              <div className="footer-column">
                <h4>Support</h4>
                <ul className="footer-links">
                  <li>VIP Club</li>
                  <li>Referral</li>
                  <li>Affiliate</li>
                  <li>Lottery</li>
                  <li>Refer a friend</li>
                </ul>
              </div>
              <div className="footer-column">
                <h4>Legal</h4>
                <ul className="footer-links">
                  <li>About Us</li>
                  <li>Help Center</li>
                  <li>Gamble Aware</li>
                  <li>Fairness</li>
                  <li>FAQ</li>
                  <li>Privacy Policy</li>
                  <li>Terms of Service</li>
                </ul>
              </div>
              <div className="footer-column">
                <h4>Our Global Community</h4>
                <div className="social-icons">
                  {['🌐', '𝕏', 'f', '📷', '📺', '💬', '📱'].map((icon, i) => (
                    <div key={i} className="social-icon">{icon}</div>
                  ))}
                </div>
              </div>
            </div>
          </div>
        </footer>

        {/* Floating Support Button */}
        <button className="support-btn">💬</button>
      </div>
    </>
  );
}
