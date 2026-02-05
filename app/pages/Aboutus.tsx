'use client'
import { useEffect, useState } from 'react'



import { strapiFetch } from "../services/strapi";

const getArticles = async () => {
  // Use the environment variable for the Strapi URL
  const url = `http://localhost:1337/api/posts`; 
  
  const res = await fetch(url);

  if (!res.ok) {
    // This will activate the closest error.js Error Boundary
    throw new Error('Failed to fetch data') 
  }

  const articles = await res.json();
  return articles.data; // Strapi wraps data in a 'data' property
};



export default  function Aboutus() {

      const [data, setData] = useState(null)

       useEffect(() => {
          async function fetchData() {
               const res = await fetch('http://localhost:1337/api/posts')
               const json = await res.json()
               setData(json)
          }

          fetchData()
          }, [])

  //const data = await strapiFetch("about-us?populate=*");
if (!data) return <p>Loading...</p>

  return (
    <section>
      <h1>{data?.data?.attributes?.Title}</h1>
    </section>
  );
}


/*
export default async  function Aboutus() { 
     const articles = await getArticles();
 
 return (
          <>               
          <h1>About Us Loading</h1>       
          <ul>
          {articles.map((article:any) => (
               <li key={article.id}>{article.attributes.title}</li>
          ))}
          </ul>

          </>    
  )

}
*/