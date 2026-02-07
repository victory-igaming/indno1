import NextImage from 'next/image';

export default function Sports() {
  return (
    <div className="section-grid">
              <div className="section-card">
                <h3 className="section-title">🎰 CASINO</h3>
                <div className="section-content">
                  <p className="section-text">veniam dolore consectetur lorem<br/>aliqua ad dolor minim adipiscing</p>
                  <div className="section-icon2" >
                    <NextImage src="/images/casino_1.png"  alt="Company Logo"  width={164}  height={164} />
                        </div>
                </div>
              </div>
              <div className="section-card">
                <h3 className="section-title">⚽ SPORTS</h3>
                <div className="section-content">
                  <p className="section-text">veniam dolore consectetur lorem<br/>aliqua ad dolor minim adipiscing</p>
                  <div className="section-icon2" >
                    <NextImage src="/images/sports_1.png"  alt="Company Logo"  width={164}  height={164} />                   
                  </div>
                </div>
              </div>
            </div>
  )
}
