import { strapiFetch } from "../services/strapi";

export default async function PostsPage() { 
  const res = await strapiFetch<any[]>("posts?populate=*");

  if (!res.data || res.data.length === 0) {
    return (
      <div>
        <h1>Posts</h1>
        <p>No posts found.</p>
      </div>
    );
  }
 
  return (
    <div>
      <h1>Posts</h1>

      {res.data.map((post: any) => (
        <article key={post.id}>
          <h2>{post.attributes?.title ?? post.title}</h2>
        </article>
      ))}
    </div>  
  );
}
