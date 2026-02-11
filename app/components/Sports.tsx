import NextImage from 'next/image';

export default function Sports() {
  return (
    <div className="section-grid">
              <div className="section-card">
                <h3 className="section-title">🎰 CASINO</h3>
                <div className="section-content">
                  <p className="section-text">Experience thrilling casino entertainment with top slot games, <br /> live dealers, table classics, and instant wins. Spin, play, <br /> and enjoy nonstop excitement with secure gameplay and rewarding bonuses.</p>
                  <div className="section-icon2" >
                    <NextImage src="/images/casino_1.png"  alt="Ino Company Logo"  width={164}  height={164} />
                        </div>
                </div>
              </div>
              <div className="section-card">
                <h3 className="section-title">⚽ SPORTS</h3>
                <div className="section-content">
                  <p className="section-text">Bet on your favorite sports with real-time odds, <br /> live matches, and fast payouts. <br /> From cricket to football and more — place smart bets and feel every moment of the action.</p>
                  <div className="section-icon2" >
                    <NextImage src="/images/sports_1.png"  alt="Company Logo"  width={164}  height={164} />                   
                  </div>
                </div>
              </div>
            </div>
  )
}
