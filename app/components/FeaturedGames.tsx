import NextImage from 'next/image';
import { strapiFetch,getStrapiMedia } from "@/services/strapi";
import Link from 'next/link';

  const featurGames = [
    { title: 'AVIATOR', draw: '/images/bnar_1.png', prize: '$ 25,000.00', countdown: '00h : 00m : 00s' },
    { title: 'BIG BASS\nBONANZA', draw: '/images/bnar_2.png', prize: '$ 25,000.00', countdown: '00h : 00m : 00s' },
    { title: 'SHARE DRAGONS\nFISHING', draw: '/images/bnar_3.png', prize: '$ 25,000.00', countdown: '00h : 00m : 00s' },
    { title: 'AVIATOR', draw: '/images/bnar_4.png', prize: '$ 25,000.00', countdown: '00h : 00m : 00s' },
  ];

['AVIATOR', 'BIG BASS\nBONANZA', 'SHARE DRAGONS\nFISHING', 'AVIATOR']



export default function FeaturedGames({ ftrgame }: { ftrgame: any[] }) {


  return (
    <div className="games-grid">
              {ftrgame.map((ftrgame, i) => {
                const linkurlpath = ftrgame.linkurl ? ftrgame.linkurl:'/';
                return (                
                  <div key={i} className={`game-card ${i === 3 ? "md:hidden lg:block" : ""}`}>
                      <Link href={linkurlpath}>  
                        <div className={`game-bg`} >           
                          <NextImage 
                                        src={`${getStrapiMedia(ftrgame.image?.url)}`} 
                                        alt={ftrgame?.alternativeText || ftrgame?.title || "Sport image"} 
                                        width={340} 
                                        height={180}                                   
                                        unoptimized 
                                        loading="lazy"
                                      />
                          <div className="game-overlay"></div>
                        </div>
                    </Link>                 
                  </div>
                )} 
              )}
            </div>
  )
}
