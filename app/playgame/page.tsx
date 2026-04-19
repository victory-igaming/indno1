


import { strapiFetch, getStrapiMedia } from "../services/strapi";
import BlogList from '../components/blocks/BlogPost';
import Link from 'next/link';
import qs from 'qs';
import GameSlots from '@/components/blocks/GameSlots';



import { Metadata } from 'next';
export async function generateMetadata({params}: {params: Promise<{ slug: string }>}): Promise<Metadata> {

   const queryMata = qs.stringify({
      populate: '*',
    }, { encodeValuesOnly: true });

  try {
         
        // const responseMata = await strapiFetch(`gamepages?${queryMata}`);
        //const responseMata = await strapiFetch(`blogs?populate=*`); 
         const responseMata = await strapiFetch(`playgames?${queryMata}`);      
       // const dataMata = responseMata.data; 
        //console.log("responseMata : ",responseMata);
        const dataMata = responseMata.data?.[0]; 
        //console.log("dataMata : ",dataMata);

        return {
          title: dataMata?.meta_title || process.env.META_TITLE,
          keywords: dataMata?.meta_tag || process.env.META_KEYWD,
          description: dataMata?.meta_discrp || process.env.META_DISCRP,           
          openGraph: {
            title: dataMata?.meta_title,
            description: dataMata?.meta_discrp,
            images: dataMata?.gamebanner?.url ? [dataMata.gamebanner.url] : [],
          },
        };
     
       } catch (error) {
         console.error("Metadata fetch error:", error);
         return { title: "IND NO1 - Most Trusted Gaming &amp; Betting Website - Home" };
       }
   
   }


export default async function Playgames() { 

// Loading Category
const  responsecat = await strapiFetch("gamepages?populate=*");
const categories = responsecat.data || [];
//console.log(categories);

const blogCategory = categories.map((item: any) => ({
    id: item.id,
    title: item.pagename,
    category: item.gamecategoty?.pagename || 'General',
    image: item.image?.url ? `${process.env.NEXT_PUBLIC_STRAPI_URL}${item.image.url}` : '/placeholder.jpg',
    slug: item.seoUrl
  }));

// 2. Fetch Games with the relationship to categories populated
const querygames = qs.stringify({
    populate: ['gameicon', 'gamecategoties'], 
  }, { encodeValuesOnly: true });



//const finalUrl = `blogs?populate=*`; // id=?id=3&
const gamefinalUrl = `playgames?${querygames}`;


const responsegame = await strapiFetch(gamefinalUrl);
const games = responsegame?.data || [];

    // 1. Check if response exists
if (!responsegame || !responsegame.data) {
  return <div>Games Loading or Error...</div>; 
}

if (!games.length) return <div>No games found.</div>;

//console.log(" categories :: ",categories);
//console.log(" games :: ",games);
// 2. Access the fields from inside data



/* */
 return (
          <>
           
           
           {/* Category Filter Buttons */}
          <div className="category-filter flex gap-2 overflow-x-auto p-4">
        {categories.map((cat: any) => (
          <button key={cat.id} className="category-btn whitespace-nowrap px-4 py-2 bg-gray-800 rounded-lg">
            {cat.pagename}
          </button>
        ))}
      </div>


         
        {/* Category-wise Game Sections */}
        {categories.map((category: any) => {
        // FILTER: Only get games belonging to this specific category ID
        // Adjust 'item.gamepage.id' to match your actual Strapi relation field name
        //console.log(" games :: ",`${'categoryGames'.length}`);
       // console.log(" category_id :: ",`${category.id}`); game.gamecategoties?.id === category.id
        const categoryGames = games.filter((gamecat: any) => Array.isArray(gamecat.gamecategoties) 
      ? gamecat.gamecategoties.some((c: any) => c.id === category.id)
      : gamecat.gamecategoties?.id === category.id  );
        //console.log(" categoryGames :: ",categoryGames);
       // console.log(" Count Cat Games :: ",categoryGames.length);
       // console.log("Game Category Data:", games[0]?.gamecategoties);
        // Don't render a section if it has no games
        if (categoryGames.length === 0) return null;

        return (
          <div key={`section-${category.id}`} className="live-section my-8">
            <div className="section-header px-4 mb-4">
              <h2 className="section-title text-xl font-bold flex items-center">
                🎰 {category.pagename}
              </h2>
            </div>

            <div className="casino-grid grid grid-cols-2 md:grid-cols-4 lg:grid-cols-6 gap-4 px-4">
              {categoryGames.map((game: any) => {
               //console.log(" Game List :: ", game.gameicon.url);
                //Wconst imageField = game?.gameicon;
                //const imageUrl = getStrapiMedia(imageField?.url);
             
                return (
                      <GameSlots  key={`game-${game.id}`} title={game.gamename}  seourl={game.seourl} image={game.gameicon} 
                />
                )}
             
                
        )}
            </div>
          </div>
        );
      })}

         
          </>    
  )

}