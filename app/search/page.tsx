


import { strapiFetch, getStrapiMedia } from "@/services/strapi";
import BlogList from '@/components/blocks/BlogPost';
import Link from 'next/link';
import qs from 'qs';
import GameSlots from '@/components/blocks/GameSlots';

// Assume searchParams.search comes from your URL (?search=yourterm)


import { Metadata } from 'next';
export async function generateMetadata({searchParams}: { searchParams: Promise<{ search?: string }> }): Promise<Metadata> {   

 // const { slug } = await params;
  const { search } = await searchParams;

    // Manual data object
  const dataMata = {
    heading: ` Indno1 |  ${search} | Premium Gaming Experience`,
    meta_tag: ` Indno1 , ${search}, online gaming, sports analysis, betting platform  `,
    meta_discrp: ` Indno1 , ${search}, online gaming, sports analysis, betting platform `,
    google_tagid: "",
    gamebanner: {
      name : "",
      url : ""
    }
  };

      
  if(search){

     return {
          title: dataMata?.heading || process.env.META_TITLE,
          keywords: dataMata?.meta_tag || process.env.META_KEYWD,
          description: dataMata?.meta_discrp || process.env.META_DISCRP,     
          verification: {
            google: dataMata?.google_tagid || process.env.META_GGTAG,
          },
          openGraph: {
            title: dataMata?.heading,
            description: dataMata?.meta_discrp,
            images: dataMata?.gamebanner?.url ? [dataMata.gamebanner.url] : [],
          },
        };

  }else{
    return { title: "IND NO1 - Most Trusted Gaming &amp; Betting Website - Search " };
  }
  
   
     
      
   
   }





export default async function Search({ 
  searchParams 
}: { 
  searchParams: Promise<{ search?: string }> 
}) { 

//const searchTerm = searchParams.search;
//const { search: searchTerm = "" }= await searchParams;

const { search } = await searchParams;
const searchTerm = search || "";

// Now 'searchTerm' is guaranteed to be a string
console.log('searchTerm', searchTerm);

const query = qs.stringify({
filters: {
    // We use $or to search in multiple fields
    $or: [
      {
        heading: {
          $containsi: searchTerm, // 'containsi' is case-insensitive
        },
      },
      {
        description: {
          $containsi: searchTerm,
        },
      },
    ],
  },
populate: '*',
}, { encodeValuesOnly: true });

//const finalUrl = `blogs?populate=*`; // id=?id=3&
const finalUrl = `blogs?${query}`;

//console.log(finalUrl);
const response = await strapiFetch(finalUrl);
//console.log(response);
    // 1. Check if response exists
if (!response || !response.data) {
  return <div>Blogs Loading or Error...</div>; 
}

// 2. Access the fields from inside data
const blogs  = response.data;


// Now 'searchTerm' for games

const querygames = qs.stringify({
filters: {
    // We use $or to search in multiple fields
    $or: [
      {
        gamename: {
          $containsi: searchTerm, // 'containsi' is case-insensitive
        },
      },
      {
        description: {
          $containsi: searchTerm,
        },
      },
    ],
  },
populate: '*',
}, { encodeValuesOnly: true });



//const finalUrl = `blogs?populate=*`; // id=?id=3&
const gamefinalUrl = `playgames?${querygames}`;

console.log(gamefinalUrl);
const responsegame = await strapiFetch(gamefinalUrl);
console.log(responsegame);
    // 1. Check if response exists
if (!responsegame || !responsegame.data) {
  return <div>Games Loading or Error...</div>; 
}

// 2. Access the fields from inside data
const games  = responsegame.data;

/* */
 return (
          <>
           {/* All Gamme */}
           {games || games.length >= 0 ? ( 
           <div className="live-section">
              <div className="section-header">
              
                <h2 className="section-title"> 🎰 {searchTerm} Games</h2>
              
              </div>
              <div className="casino-grid">
                  
                {games.map((lcasino: any,idx: any) => {
                  
                  return <GameSlots key={`gmslt-${idx}`} title={lcasino.title} seourl={lcasino.seourl} image={lcasino.gameicon}   />   ;
                })}

                
              </div>
            </div>
          ) : (
              <>  
               <div className="live-section">
              <div className="section-header">
              
                <h2 className="section-title"> No {searchTerm} Games Found</h2>
                   </div>

                      </div>
              </> 
            )}
           

          {/* All Posts */}
          {blogs || blogs.length >= 0? ( 
         <div>
            <h2 className="section-title"> {searchTerm} Articles</h2>
            <div className="blog-grid">
                 {blogs.map((post: any,idx: any) => {
                 // console.log(`gamecategoty`); console.log(post.gamecategoty);
                 const imageField = post.image;
                 const imageUrl = getStrapiMedia(imageField?.url);
                  return (                

                      <div key={post.id} className="blog-card">
                  <Link className="nav-link" href={`/blog/${post.seoUrl}`} key={post.id} >
                  <div className="blog-image overflow-hidden">
                    {imageUrl && imageUrl !== "" ? (<img  src={imageUrl}  alt={post.heading}   width={600} height={100}  />) : null} 
                    
                    
                    </div>
                  <div className="blog-content">
                    <span className="post-category"> 
                    {post.gamecategoty?.pagename || "Uncategorized"}  
                        
                                         
                    </span>
                    <h3 className="blog-title">{post.heading}</h3>
                    <p className="blog-excerpt">{post.description}</p>
                    <div className="post-meta">
                       {/* <span>👤 {post.author}</span>
                      <span>⏱️ {post.readTime}</span> */}
                    </div>
                  </div></Link>
                </div>
                  )
                  
                   })}
              
            </div>
          </div>
  ) : (  <>
         <div>
            <h2 className="section-title"> {searchTerm} Articles Founds</h2>
             </div>
   </> 
            )}
         
          </>    
  )

}