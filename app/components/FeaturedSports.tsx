import NextImage from 'next/image';
import { strapiFetch,getStrapiMedia } from "@/services/strapi";

  const featurSport = [
    { title: 'RACING', draw: '/images/game_1.png', icon: '🎰', details: 'veniam dolore consectetur lore aliqua ad dolor minim adipiscing A complete log of this run can be foundA complete log of this run can be found' },
    { title: 'Footballe', draw: '/images/game_2.png', icon: '⚽', details: 'A complete log of this run can veniam dolore consectetur lore be foundA complete log of this run can be found' },
    { title: 'Cricket', draw: '/images/game_3.png', icon: '🔥', details: 'A complete log of this run can be foundA complete log of this run can be found' },
    { title: 'AVIATOR', draw: '/images/game_4.png', icon: '⭐', details: 'veniam dolore consectetur loromplete log veniam dolore consectetur lore of this run can be found veniam dolore consectetur lore ' },
  ];


export default function FeaturedSports({ sportbanner }: { sportbanner: any[] }) {

  console.log("Sportbanner",sportbanner); 


  return (
      <div className="racing-grid">
      {sportbanner.map((sport) => (

         <div key={sport.id} className="racing-card">
                  <div className="racing-title"> {sport.icon?.url && (
            <NextImage 
              src={`${getStrapiMedia(sport.icon?.url)}`} 
              alt={sport?.alternativeText || sport?.title || "Sport image"}
              width={20} 
              height={20}
              unoptimized // Bypasses the Private IP error we saw earlier
            />
          )} {sport.title}</div>
                  <div className="flex-1 racing-img">
                 {sport.image?.url && (
            <NextImage 
              src={`${getStrapiMedia(sport.image?.url)}`} 
              alt={sport?.alternativeText || sport?.title || "Sport image"}
              width={80}
              height={80}
              unoptimized
            />
          )}

                                          </div>
<div className="flex-1 space-y-4">
       
        <p className="text-gray-300">
         {sport.description}
        </p>
      
      </div>
                                
                </div>
                
      ))}
    </div>
  );
}
