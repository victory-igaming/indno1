export default function BlogList({ blogs }:any) {

  const hasBlogs = blogs && Array.isArray(blogs) && blogs.length > 0;

  if (!hasBlogs) {
    return (
      <div className="p-10 text-center">
        <p className="text-gray-500 italic">No blog posts available at the moment.</p>
      </div>
    );
  }


  return (
    <section className="container mx-auto px-4 py-8">
      <h1 className="text-3xl font-bold mb-6">Latest Cricket Insights</h1>
      
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        {blogs.map((blog) => (
          <div key={blog.documentId || blog.id} className="border rounded-xl overflow-hidden shadow-md">           
            {blog.image?.url && (
              <img 
                src={blog.image.url} 
                alt={blog.heading} 
                className="w-full h-48 object-cover"
              />
            )}
            
            <div className="p-4">
              <h2 className="text-xl font-semibold mb-2">{blog.heading}</h2>
              <p className="text-gray-600 line-clamp-3">{blog.description}</p>              
              <button className="mt-4 text-blue-600 font-medium hover:underline">
                Read More →
              </button>
            </div>
          </div>
        ))}
      </div>
    </section>
  );
}