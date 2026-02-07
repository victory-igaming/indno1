"use client"

import NextImage from 'next/image';
import Link from 'next/link';
import { usePathname, useRouter } from 'next/navigation';
import { useState } from 'react';

// Lucide React Icons (you can replace with your preferred icon library)
const SearchIcon = () => (
  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
    <circle cx="11" cy="11" r="8"></circle>
    <path d="m21 21-4.35-4.35"></path>
  </svg>
);


export default function Header() {

  const [query, setQuery] = useState("");
  const [isSearchOpen, setIsSearchOpen] = useState(false);

  const pathname = usePathname(); 
  const router = useRouter();


  const handleSearchSubmit = (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    if (query.trim()) {
      // Redirects to /blog with the search query as a URL parameter
      router.push(`/search?search=${encodeURIComponent(query)}`);
      setQuery("");
      setIsSearchOpen(false);
    }
  };
  
  return (
     <header className="header">
          <div className="header-content">
            <div className="logo-section">
              <Link  href="/">
              <div className="logo">
                <NextImage 
        src="/images/logo1.png" 
        alt="Indno1 Company Logo" 
        width={60} 
        height={60} 
      /></div></Link>
              <div>
                <div className="logo-text">IND NO1</div>
                <div className="logo-subtitle">Most Trusted<br/>Gaming & Betting<br/>Website</div>
              </div>
            </div>
            <nav>
              <ul className="nav-menu">
                <li><Link className={(
                   
                   `nav-link  ${pathname === "/"?"nav-link-active":""}`
                   
                )} href="/">Home</Link></li>
                <li><Link className={(
                   
                   `nav-link  ${pathname === "/about"?"nav-link-active":""}`
                   
                )} href="/about">About Us</Link></li>
                <li><Link className={(
                   
                   `nav-link  ${pathname === "/blog"?"nav-link-active":""}`
                   
                )} href="/blog">Blog</Link></li>
                <li><Link className={(
                   
                   `nav-link  ${pathname === "/faq"?"nav-link-active":""}`
                   
                )} href="/faq">FAQ</Link></li>
                <li><Link className={(
                   
                   `nav-link  ${pathname === "/terms"?"nav-link-active":""}`
                   
                )} href="/terms">Terms & Conditions</Link></li>
                <li><Link className={(
                   
                   `nav-link  ${pathname === "/contact"?"nav-link-active":""}`
                   
                )} href="/contact">Contact</Link></li>
                {/* <li><Link className="nav-link" href="/blogdetails">Blog Data</Link></li> */}
                 
                
              </ul>
            </nav>
            <div className="header-actions">
              <div className={`search-box ${isSearchOpen ? 'search-box-active' : ''}`}>
                <form onSubmit={handleSearchSubmit} className="flex items-center">
                <input 
                  type="text" 
                  placeholder="Search blog, games ..."
                  className={`search-input ${isSearchOpen ? 'search-input-visible' : 'search-input-hidden'}`}
                  value={query}
                  onChange={(e) => setQuery(e.target.value)}
                  autoFocus={isSearchOpen}
                />
                <span className="search-icon cursor-pointer" onClick={() => setIsSearchOpen(!isSearchOpen)}><SearchIcon /></span>
                </form>
              </div>
              <button className="play-now-btn">PLAY NOW</button>
              <div className="flag-icon">
                <NextImage 
        src="/images/en.png" 
        alt="Company Logo" 
        width={60} 
        height={60} 
      />
              </div>
            </div>
          </div>
        </header>
  )
}
