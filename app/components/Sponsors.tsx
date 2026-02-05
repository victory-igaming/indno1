
  import NextImage from 'next/image';
  
  const sponsors = [
    { id: '1', title: 'PLAY', image: '/images/play.png', icon: '🎰'},
    { id: '2', title: 'PG', image: '/images/pg.png', icon: '🎰'},
    { id: '3', title: 'M', image: '/images/m.png', icon: '🎰'},
    // { id: '4', title: 'JILI', image: '/images/jili.png', icon: '🎰'},
    // { id: '5', title: 'JDB', image: '/images/jdb.png', icon: '🎰'},
    // { id: '6', title: 'Fire', image: '/images/H.png', icon: '🔥'},
    // { id: '7', title: 'A', image: '/images/A.png', icon: '🎰'},
    // { id: '8', title: 'cq9', image: '/images/cq9.png', icon: '🎰'},
    // { id: '9', title: 'BG GAMING', image: '/images/pg.png', icon: '🎰'},
    // { id: '10', title: 'Stars', image: '/images/start.png', icon: '⭐'},
    // { id: '11', title: 'spribe', image: '/images/spribe.png', icon: '⭐'},
  ];


export default function Sponsors() {
  return (
    <>
    <div className="card">
              <h3 className="card-title">Sponsors</h3>
              <div className="sponsors-grid">
                {sponsors.map((sponsor, i) => (
                  <div key={i} className="sponsor-box" >
                     <NextImage  src={sponsor.image}  alt={sponsor.title}   width={100}   height={50}   />
                  </div>
                ))}
              </div>
              <div className="dots">
                <div className="dot dot-active"></div>
                <div className="dot dot-inactive"></div>
                <div className="dot dot-inactive"></div>
              </div>
            </div>
    </>
  )

}