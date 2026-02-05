  const socialLinks = [
    { id: '1', label: 'FaceBook', icon: 'f' },
    { id: '2', label: 'x', icon: '𝕏' },
    { id: '3', label: 'Tweeter', icon: '🌐' },
    { id: '4', label: 'Youtube', icon: '📷' },
    { id: '5', label: 'Live', icon: '📺' },

  ];  
['🌐', '𝕏', 'f', '📷', '📺', '💬', '📱']


export default function Footer() {
  return (
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
                  {socialLinks.map((scialitem, i) => (
                    <div key={i} className="social-icon">{scialitem.icon}</div>
                  ))}
                </div>
              </div>
            </div>
          </div>
        </footer>
  )
}
