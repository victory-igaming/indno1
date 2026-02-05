
import { Console } from "console";
import { strapiFetch } from "../services/strapi";

export default async function PostsPage() { 

    const res = await strapiFetch("posts?populate=*");

    console.log(res);
 
 return (
           <div>
            <h1>Posts</h1>

            {res.data.map((post: any) => (
                <article key={post.id}>
                <h2>{post.attributes.title}</h2>
                </article>
            ))}
            </div>  
  )

}
