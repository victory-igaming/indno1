"use client"

import NextImage from 'next/image';
import Link from 'next/link';
import { usePathname, useRouter } from 'next/navigation';
import { useState, useEffect } from 'react';

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
  const [isMobile, setIsMobile] = useState(false);

  // State holds the data for the QR code, or 'null' when closed
  const [activeQr, setActiveQr] = useState<string | null>(null);
  const qrData = {
    android: { title: "Android QR", code: "/images/android.jpg",downloadUrl: "https://pay.example.com/download" },
    ios: { title: "IOS QR", code: "/images/ios.jpg",downloadUrl: "https://wifi.example.com/setup" }
  };

  const pathname = usePathname(); 
  const router = useRouter();

  // Check screen size on mount and on resize
useEffect(() => {
    const checkDevice = () => {
      setIsMobile(window.innerWidth < 768); // 768px is the standard 'md' breakpoint
    };

    checkDevice(); // Initial check
    window.addEventListener('resize', checkDevice);
    return () => window.removeEventListener('resize', checkDevice);
  }, []);


const handleClick = (item: { code: string; downloadUrl: string }) => {
    if (isMobile) {
      window.location.href = item.downloadUrl;
    } else {
      setActiveQr(item.code);
    }
};

  const handleSearchSubmit = (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    if (query.trim()) {
      // Redirects to /blog with the search query as a URL parameter
      router.push(`/search?search=${encodeURIComponent(query)}`);
      setQuery("");
      setIsSearchOpen(false);
    }
  };


  const handlePlayButton = ({e}:any) => {
    e.preventDefault();
    if (query.trim()) {
      // Redirects to /blog with the search query as a URL parameter
      router.push(`/search?search=${encodeURIComponent(query)}`);
      setQuery("");
      setIsSearchOpen(false);
    }
  };

  const handleOpenSite = () => {
    // window.open(URL, Target, Features)
    // '_blank' opens the link in a new tab
    // 'noopener,noreferrer' is a security best practice
    window.open("https://indno1.com", "_blank", "noopener,noreferrer");
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
        style={{height:'auto'}}
        unoptimized
        priority
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
              <button className="play-now-btn" onClick={handleOpenSite}>PLAY NOW</button>

               {/* Google Play Button */}
  <button className="download-now-btn" type='button' onClick={() => handleClick(qrData.android)} >
    <img 
       src="/images/playstore.png" 
      alt="Get it on Google Play" 
      className="h-10 object-contain"      
    />
  </button>

  <button className="download-now-btn" type='button' onClick={() => handleClick(qrData.ios)} >
    <img 
      src="/images/appstore.png" 
      alt="Get it on Google Play" 
      className="h-10 object-contain"      
    />
  </button>




              <div className="flag-icon">
                <NextImage 
        src="/images/en.png" 
        alt="Ind No 01 Logo" 
        width={60} 
        className="w-37.5 h-auto"
        priority
        height={60} 
        style={{height:'auto'}}
      />
              </div>
            </div>
          </div>



          {/* The Popup Overlay */}
         {activeQr && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 px-5">
          <div className="bg-white p-10 rounded-lg text-center">            
            <h2 className="text-lg font-bold mb-4">Your QR Code</h2>
            
            {/* The Image changes based on which button was clicked */}
            <img src={activeQr} alt="QR Code" className="w-48 h-48 mx-auto mb-4" />
            
            <button 
              onClick={() => setActiveQr(null)} // Reset to null to close
              className="mt-2 text-sm text-gray-500 underline"
            >
              Close
            </button>
          </div>
        </div>
      )}

        </header>
  )
}
