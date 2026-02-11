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
    { id: '1', label: 'Casino Home',  href:'' },
    { id: '2', label: 'Live', href:'' },
    { id: '3', label: 'New Releases', href:'' },
    { id: '4', label: 'Recommended', href:'' },
    { id: '5', label: 'Table Game', href:'' },
    { id: '6', label: 'Black Jack', href:'' },
    { id: '7', label: 'Poker', href:'' },
    { id: '8', label: 'Baccarat', href:'' },
    { id: '9', label: 'Sports', href:'' },
  ];    

  const sportFooterItems = [
    { id: '1', label: 'Sports Home',  href:'' },
    { id: '2', label: 'Live', href:'' },
    { id: '3', label: 'Rules', href:'' },
    { id: '4', label: 'Sport Betting Insights', href:'' },
   
  ];   

  const suportFooterItems = [
    { id: '1', label: 'VIP Club',  href:'' },
    { id: '2', label: 'Referral', href:'' },
    { id: '3', label: 'Affiliate', href:'' },
    { id: '4', label: 'Lottery', href:'' },
    { id: '5', label: 'Refer a friend', href:'' },
  
  ];  

    const legalFooterItems = [
    { id: '1', label: 'About Us',  href:'' },
    { id: '2', label: 'Help Center', href:'' },
    { id: '3', label: 'Gamble Aware', href:'' },
    { id: '4', label: 'Fairness', href:'' },
    { id: '5', label: 'FAQ', href:'' },
    { id: '6', label: 'Privacy Policy', href:'' },
    { id: '7', label: 'Terms of Service', href:'' },
  
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
