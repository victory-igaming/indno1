

import { strapiFetch,getStrapiMedia } from "@/services/strapi";
import BlogProvider from '@/components/blocks/BlogProvider';
import Link from 'next/link';
import qs from 'qs';

export default async function Sponsors() { 

const gameId = ``;  
const query = qs.stringify({
  fields: ['name', 'description', 'seourl', 'createdAt', 'publishedAt', 'updatedAt'],
  populate: {
    logo: { populate: '*' },
    gamecategoties: { populate: '*' },
    bodysponce: { populate: '*' },   
  },
  status: 'published',
  locale: ['en'],
}, { encodeValuesOnly: true });

const finalUrl = `sponsors?populate=*`; // id=?id=3&
//const finalUrl = `blogs?${query}`;

//console.log(finalUrl);
const response = await strapiFetch(finalUrl);
//console.log(response);
    // 1. Check if response exists
if (!response || !response.data) {
  return <div>Loading or Error...</div>; 
}

// 2. Access the fields from inside data
const blogs  = response.data;


// Loading Category
const  responsecat = await strapiFetch("gamepages?populate=*");
const categories  = responsecat.data;
console.log(categories);

const blogCategory = categories.map((item: any) => ({
    id: item.id,
    title: item.pagename,
    category: item.gamecategoty?.pagename || 'General',
    image: item.image?.url ? `${process.env.NEXT_PUBLIC_STRAPI_URL}${item.image.url}` : '/placeholder.jpg',
    slug: item.seoUrl
  }));

//const myData = response.data;
console.log(blogs);
//console.log(heading); console.log(response.meta.pagination.page);

  //console.log(heading); console.log(seoUrl);  console.log(image); console.log(image);console.log(blogbody);    

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

/* */
 return (
          <>
          {/* Category Filter */}
          <div className="category-filter">
           
              {console.log(blogCategory)}
              {blogCategory.map((alcategory: any, alindex: number) => (
                        <button
                key={alindex}
                className={`category-btn`}                
              >
              {alcategory?.title || "No Category"}
              </button>
              ))}
          
          </div>


          {/* All Posts */}
          <div>
            <h2 className="section-title">Latest Articles {blogs.heading} </h2>
            <div className="blog-grid">
                 {blogs.map((post: any,idx: any) => {
                 // console.log(`gamecategoty`); console.log(post.gamecategoty);
                 const comTitle = `Sponsors Indno 01`;
                 const imageField = post.logo.url;
                 const imageUrl = getStrapiMedia(imageField?.url);
                  return (                

                      <div key={post.id} className="blog-card">
                  <Link className="nav-link" href={`/sponsors/${post.seoUrl}`} key={post.id} >
                  <div className="blog-image overflow-hidden"><img  src={imageUrl??""}  alt={post.heading}   width={600} height={100}  /></div>
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

         

         
          </>    
  )

}