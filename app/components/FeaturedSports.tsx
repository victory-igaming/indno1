import NextImage from 'next/image';

  const featurSport = [
    { title: 'RACING', draw: '/images/game_1.png', icon: '🎰', details: 'veniam dolore consectetur lore aliqua ad dolor minim adipiscing A complete log of this run can be foundA complete log of this run can be found' },
    { title: 'Footballe', draw: '/images/game_2.png', icon: '⚽', details: 'A complete log of this run can veniam dolore consectetur lore be foundA complete log of this run can be found' },
    { title: 'Cricket', draw: '/images/game_3.png', icon: '🔥', details: 'A complete log of this run can be foundA complete log of this run can be found' },
    { title: 'AVIATOR', draw: '/images/game_4.png', icon: '⭐', details: 'veniam dolore consectetur loromplete log veniam dolore consectetur lore of this run can be found veniam dolore consectetur lore ' },
  ];


export default function FeaturedSports() {
  return (
    <>
     <div className="racing-grid">
              {featurSport.map((sport,i) => (
                <div key={i} className="racing-card">
                  <div className="racing-title">{sport.icon} {sport.title}</div>
                  <div className="flex-1 racing-img">
                  <NextImage 
                                            src={sport.draw} 
                                            alt={sport.title}
                                            width={80} 
                                            height={80} 
                                          />
                                          </div>
<div className="flex-1 space-y-4">
       
        <p className="text-gray-300">
         {sport.details}
        </p>
      
      </div>
                                
                </div>
              ))}
            </div>
    </>
  )
}
