
  import NextImage from 'next/image';
  
  
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


  const liveSlot = [
    { id: '1', title: 'Live Casino', image: '/images/110.png', icon: '🎰'},
    { id: '5', title: 'Live Casino', image: '/images/75.png', icon: '🎰'},
    { id: '2', title: 'Live Casino', image: '/images/106.png', icon: '🎰'},
     { id: '6', title: 'Live Casino', image: '/images/42.png', icon: '🎰'},
    { id: '3', title: 'Live Casino', image: '/images/100.png', icon: '🎰'},
    { id: '4', title: 'Live Casino', image: '/images/92_en.png', icon: '🎰'},  
   
  ];


export default function Slots() {
  return (
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
                  {liveSlot.map((lcasino,i) => (
                  <div key={i} className="casino-item">
                    <NextImage 
                                                                          src={lcasino.image} 
                                                                          alt={lcasino.title} 
                                                                          width={340} 
                                                                          height={180} 
                                                                        />
                  </div>
                ))}
              </div>
            </div>
  )
}
