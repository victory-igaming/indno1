


import { strapiFetch, getStrapiMedia } from "../services/strapi";
import BlogList from '../components/blocks/BlogPost';
import Link from 'next/link';
import qs from 'qs';





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




//{ searchParams }: { searchParams: { page?: string } } //   const currentPage = Number(searchParams?.page) || 1;
export default async function Blogs(props: { searchParams: Promise<{ page?: string; pageSize?: string }> }) { 

  // 2. Unwrap the promise
  const searchParams = await props.searchParams;

  // 3. Now you can safely access .page
  const currentPage = Number(searchParams?.page) || 1;
  const pageSize = Number(searchParams?.pageSize) || 24;
  //console.log("Fetching Page:", currentPage); // Check your terminal!

const gameId = ``;  
const query = qs.stringify({
  fields: ['heading', 'description', 'description','seoUrl' ,'createdAt', 'publishedAt', 'updatedAt'],
  populate: {
    image: { populate: '*' },
    gamecategoty: { populate: '*' },
    blogbody: { populate: '*' },
    faqBody: { populate: '*' },
  },
  pagination: {
    page: currentPage,           // The page number you want to fetch
    pageSize: pageSize,      // Number of items per page
    withCount: true,   // Includes total count/page count in the meta response
  },
  sort: ['updatedAt:desc'],
  status: 'published',
  locale: ['en'],
}, { encodeValuesOnly: true });

//const finalUrl = `blogs?populate=*`; // id=?id=3&
const finalUrl = `blogs?${query}`;
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
const pagination = response.meta.pagination; // This contains pageCount, total, etc.


// Loading Category
const  responsecat = await strapiFetch("gamepages?populate=*");
const categories  = responsecat.data;
//console.log(categories);

const blogCategory = categories.map((item: any) => ({
    id: item.id,
    title: item.pagename,
    category: item.gamecategoty?.pagename || 'General',
    image: item.image?.url ? `${process.env.NEXT_PUBLIC_STRAPI_URL}${item.image.url}` : '/placeholder.jpg',
    slug: item.seoUrl
  }));

//const myData = response.data;
//console.log(blogs);
//console.log(heading); console.log(response.meta.pagination.page);

  //console.log(heading); console.log(seoUrl);  console.log(image); console.log(image);console.log(blogbody);    


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
				 const imagePath = post.image?.data?.attributes?.url || post.image?.url;
				 const imageUrl = imagePath ? getStrapiMedia(imagePath) : '/placeholder-image.jpg';
                 //const imageUrl = getStrapiMedia(post?.image.url);
                  return (                

                      <div key={post.id} className="blog-card">
                  <Link className="nav-link" href={`/blog/${post.seoUrl}`} key={post.id} >
                  <div className="blog-image overflow-hidden">
                    
                    {imageUrl && imageUrl !== "" ? ( 
				  <img  src={imageUrl}  alt={post.heading}   width={600} height={100}  />
				   ) : null} 
                    
                    
                    </div>
                  <div className="blog-content">
                    <span className="post-category"> 
                    {post.gamecategoty?.pagename || "Uncategorized"}   / {post.id}
                                         
                    </span>
                    <h3 className="blog-title">{post.heading}</h3>
                    {/* <p className="blog-excerpt">{post.description}</p>
                    <div className="post-meta">
                       <span>👤 {post.author}</span>
                      <span>⏱️ {post.readTime}</span>
                    </div> */}
                  </div></Link>
                </div>
                  )
                  
              })}
              
            </div>

            <div className="pagination-controls" style={{ display: 'flex', gap: '10px', marginTop: '20px', alignItems: 'center' }}>
  
            {/* Previous Button */}
            <Link 
              href={`/blog?page=${currentPage - 1}`}
              className={`btn pagination-Link ${currentPage <= 1 ? 'disabled' : ''}`}
              style={{ pointerEvents: currentPage <= 1 ? 'none' : 'auto', opacity: currentPage <= 1 ? 0.5 : 1 }}
            >
              <ChevronLeft /> Previous
            </Link>

            <span className="pagination-curent">Page {pagination.page} of {pagination.pageCount}</span>

            {/* Next Button */}
            <Link 
              href={`/blog?page=${currentPage + 1}`}
              className={`btn pagination-Link ${currentPage >= pagination.pageCount ? 'disabled' : ''}`}
              style={{ pointerEvents: currentPage >= pagination.pageCount ? 'none' : 'auto', opacity: currentPage >= pagination.pageCount ? 0.5 : 1 }}
            >
              Next <ChevronRight />
            </Link>
          </div>
          </div>

          {/* Newsletter Section */}
          <div className="newsletter-section">
            <h2 className="newsletter-title">Subscribe to Our Newsletter</h2>
            <p className="newsletter-text">
              Get the latest gaming tips, exclusive bonuses, and tournament updates delivered to your inbox
            </p>
            <form className="newsletter-form" >
              <input
                type="email"
                className="newsletter-input"
                placeholder="Enter your email address"
                required
              />
              <button type="submit" className="newsletter-btn">Subscribe Now</button>
            </form>
          </div>   
         

         
          </>    
  )

}