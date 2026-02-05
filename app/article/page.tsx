import { Console } from "console";
import { strapiFetch } from "../services/strapi";


export default async function Aboutus() { 
     //const articles = await getArticles();
     const articles = await strapiFetch("posts");

    console.log(articles);
 
 return (
          <>                    
          <h1>About Us Loading</h1>       
          <div className="relative rounded-xl overflow-hidden bg-liner-to-r from-yellow-700 to-yellow-500 p-6">
               
          {articles.data.map((article:any) => (

               // <li key={article?.id}>{article?.Title}</li>
           <div key={article.id} className="racing-card">
                             <div className="racing-title">{article.documentId} {article.Title}</div>
                             <div className="flex-1 racing-img">
                            
                                                     </div>
           <div className="flex-1 space-y-4">
                  
                   <p className="text-gray-300">
                    {article.slug} {article.published}
                   </p>
                 
                 </div>
                                           
                           </div>
             
          ))}

              {/* <h2 className="text-2xl font-bold"> {article?.Title} </h2>        */}
          </div>              
          </>    
  )

}