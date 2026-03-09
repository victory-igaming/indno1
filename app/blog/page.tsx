


import { strapiFetch, getStrapiMedia } from "../services/strapi";
import BlogList from '../components/blocks/BlogPost';
import Link from 'next/link';
import qs from 'qs';
import BlogsClient from "@/components/BlogClient";







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

const blogCategory = categories?.map((item: any) => ({
    id: item.id,
    title: item.pagename,
    category: item.gamecategoty?.pagename || 'General',
    image: item.image?.url ? `${process.env.NEXT_PUBLIC_STRAPI_URL}${item.image.url}` : '/placeholder.jpg',
    slug: item.seoUrl
  }))|| [];

//const myData = response.data;
//console.log(blogs);
//console.log(heading); console.log(response.meta.pagination.page);

  //console.log(heading); console.log(seoUrl);  console.log(image); console.log(image);console.log(blogbody);    


/* */
 return (
          <>
          {/* Category Filter */}
           <BlogsClient categories={blogCategory} blogbody={blogs} pagination={pagination} currentPage={currentPage} />
         

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