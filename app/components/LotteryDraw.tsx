
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

  const lotteryDraws = [
    { title: 'veniam dolore', draw: '70/50', prize: '$ 25,000.00', countdown: '00h : 00m : 00s' },
    { title: 'veniam dolore', draw: '70/50', prize: '$ 25,000.00', countdown: '00h : 00m : 00s' },
    { title: 'veniam dolore', draw: '70/50', prize: '$ 25,000.00', countdown: '00h : 00m : 00s' },
    { title: 'veniam dolore', draw: '70/50', prize: '$ 25,000.00', countdown: '00h : 00m : 00s' },
  ];

export default function LotteryDraw() {
  return (
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
  )
}
