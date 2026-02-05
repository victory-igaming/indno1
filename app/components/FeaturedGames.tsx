import NextImage from 'next/image';

  const featurGames = [
    { title: 'AVIATOR', draw: '/images/bnar_1.png', prize: '$ 25,000.00', countdown: '00h : 00m : 00s' },
    { title: 'BIG BASS\nBONANZA', draw: '/images/bnar_2.png', prize: '$ 25,000.00', countdown: '00h : 00m : 00s' },
    { title: 'SHARE DRAGONS\nFISHING', draw: '/images/bnar_3.png', prize: '$ 25,000.00', countdown: '00h : 00m : 00s' },
    { title: 'AVIATOR', draw: '/images/bnar_4.png', prize: '$ 25,000.00', countdown: '00h : 00m : 00s' },
  ];

['AVIATOR', 'BIG BASS\nBONANZA', 'SHARE DRAGONS\nFISHING', 'AVIATOR']
export default function FeaturedGames() {
  return (
    <div className="games-grid">
              {featurGames.map((ftrgame, i) => (
                <div key={i} className="game-card">
                  <div className={`game-bg`} style={{}}>
                    <NextImage 
                                  src={ftrgame.draw} 
                                  alt={ftrgame.title} 
                                  width={340} 
                                  height={180} 
                                />
                    <div className="game-overlay"></div>
                  </div>
                 
                </div>
              ))}
            </div>
  )
}
