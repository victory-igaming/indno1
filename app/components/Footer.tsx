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
    { id: '1', label: 'Casino Home',  href:'/casinos/casino-home' },
    { id: '2', label: 'Live', href:'/casinos/live-casino' },
    { id: '3', label: 'New Releases', href:'/casinos/new-releases' },
    { id: '4', label: 'Recommended', href:'/casinos/recommended' },
    { id: '5', label: 'Table Game', href:'/casinos/table-game' },
    { id: '6', label: 'Black Jack', href:'/casinos/plack-jack' },
    { id: '7', label: 'Poker', href:'/casinos/poker' },
    { id: '8', label: 'Baccarat', href:'/casinos/baccarat' },
    { id: '9', label: 'Sports', href:'/casinos/sports' },
  ];    

  const sportFooterItems = [
    { id: '1', label: 'Sports Home',  href:'/sport/sports-home' },
    { id: '2', label: 'Live', href:'/sport/live-sport' },
    { id: '3', label: 'Rules', href:'/sport/rules' },
    { id: '4', label: 'Sport Betting Insights', href:'/sport/sport-betting-insights' },
   
  ];   

  const suportFooterItems = [
    { id: '1', label: 'VIP Club',  href:'/support/vip-club' },
    { id: '2', label: 'Referral', href:'/support/referral' },
    { id: '3', label: 'Affiliate', href:'/support/affiliate' },
    { id: '4', label: 'Lottery', href:'/support/lottery' },
    { id: '5', label: 'Refer a friend', href:'/support/refer-a-friend' },
  
  ];  

    const legalFooterItems = [
    { id: '1', label: 'About Us',  href:'/about' },
    { id: '2', label: 'Help Center', href:'/legal/help-center' },
    { id: '3', label: 'Gamble Aware', href:'/legal/gamble-aware' },
    { id: '4', label: 'Fairness', href:'/legal/fairness' },
    { id: '5', label: 'FAQ', href:'/faq' },
    { id: '6', label: 'Privacy Policy', href:'/legal/privacy-policy' },
    { id: '7', label: 'Terms of Service', href:'/terms' },
  
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
