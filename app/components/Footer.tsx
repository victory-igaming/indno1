import Link from 'next/link';  

import GallerySection from '@/components/blocks/FooterGallery';  
  const socialLinks = [
    { id: '1', label: 'FaceBook', icon: 'f' },
    { id: '2', label: 'x', icon: '𝕏' },
    { id: '3', label: 'Tweeter', icon: 't' },
    { id: '4', label: 'Youtube', icon: 'y' },
   

  ];  
['🌐', '𝕏', 'f', '📷', '📺', '💬', '📱']



  const casinoFooterItems = [
    { id: '1', label: 'Aviator',  href:'/playgame/aviator' },
    { id: '2', label: 'Cricket', href:'/playgame/cricket' },
    { id: '3', label: 'Jackpot Fishing', href:'/playgame/jackpot-fishing' },
    { id: '4', label: 'Fortune Gems 2', href:'/playgame/fortune-gems-2' },
    { id: '5', label: 'XPG (Casino)', href:'/playgame/xpg-live' },

  ];    

  const sportFooterItems = [
    { id: '1', label: 'Trending',  href:'/sport/trending' },
    { id: '2', label: 'Rules', href:'/sport/rules' },
    { id: '3', label: 'Sport Sponsors', href:'/sport/sport-sponsors' },
    { id: '4', label: 'Live Scores', href:'/sport/live-sport' },
   
  ];   


  const suportFooterItems = [
    { id: '1', label: 'VIP Club',  href:'/support/vip-club' },
    { id: '2', label: 'Referral', href:'/support/referral' },
    { id: '3', label: 'Community', href:'/support/community' },
    { id: '4', label: 'Refer a friend', href:'/support/refer-a-friend' },
    { id: '5', label: 'How to Play', href:'/support/how-to-play' },
    { id: '6', label: 'Payment Methods', href:'/support/payment-methods' },
  
  ];  



    const legalFooterItems = [
    { id: '1', label: 'About Us',  href:'/about' },
    { id: '2', label: 'Fair Play', href:'/legal/fair-play' },
    { id: '3', label: 'FAQ', href:'/faq' },
    { id: '4', label: 'Why INDNO1', href:'/legal/why-indno-1' },
    { id: '5', label: 'Fairness', href:'/legal/fairness' },
    { id: '6', label: 'Blog', href:'/blog' },
    { id: '7', label: 'Terms & Condition', href:'/terms' },
    { id: '8', label: 'Privacy Policy', href:'/legal/privacy-policy' },   
  
  ]; 


export default function Footer() {
  return (
    <footer className="footer">
          <div className="footer-content">
            <div className="footer-grid">
              <div className="footer-column">
                <h4>Casino</h4>
                <ul className="footer-links">
                   {casinoFooterItems.map((info, index) => (
                    <div key={`ft-cso${info.id}`}>
                       {info.href || info.href.length >= 0 ? (
 <Link  className="nav-link" href={info.href}  rel="noopener noreferrer" ><li>{info.label}</li></Link>
                       ):( <li key={info.id} >{info.label}</li>)
                      
                      }
                    </div>               
                   ))}                 
                 
                </ul>
              </div>
              <div className="footer-column">
                <h4>Sports</h4>
                <ul className="footer-links">
                   {sportFooterItems.map((info, index) => (
                    <div key={`ft-sot${info.id}`}>
                       {info.href || info.href.length >= 0 ? (
 <Link  className="nav-link" href={info.href}  rel="noopener noreferrer" ><li>{info.label}</li></Link>
                       ):( <li key={info.id} >{info.label}</li>)
                      
                      }
                    </div>               
                   ))} 
                 
                </ul>
              </div>
              <div className="footer-column">
                <h4>Support</h4>
                <ul className="footer-links">
                   {suportFooterItems.map((info, index) => (
                    <div key={`ft-spt${info.id}`}>
                       {info.href || info.href.length >= 0 ? (
 <Link  className="nav-link" href={info.href}  rel="noopener noreferrer" ><li>{info.label}</li></Link>
                       ):( <li key={info.id} >{info.label}</li>)
                      
                      }
                    </div>               
                   ))} 
                 
                </ul>
              </div>
              <div className="footer-column">
                <h4>Legal</h4>
                <ul className="footer-links">
                   {legalFooterItems.map((info, index) => (
                    <div key={`ft-lgl${info.id}`}>
                       {info.href || info.href.length >= 0 ? (
 <Link  className="nav-link" href={info.href}  rel="noopener noreferrer" ><li>{info.label}</li></Link>
                       ):( <li key={info.id} >{info.label}</li>)
                      
                      }
                    </div>               
                   ))} 
                 
                </ul>
              </div>
              <div className="footer-column">
                <h4>Our Global Community</h4>
                <div className="social-icons mb-5">
                  {socialLinks.map((scialitem, i) => (
                    <div key={i} className="social-icon" title={scialitem.label}>{scialitem.icon}</div>
                  ))}
                </div>

                <GallerySection />
              </div>
            </div>

            {/* Added Copyright Footer */}
        <div className="footer-bottom">
          <hr className="footer-divider" />
          <p className="copyright-text">
            IndNO1 © 2026 All rights reserved.
          </p>
        </div>


          </div>
        </footer>
  )
}
