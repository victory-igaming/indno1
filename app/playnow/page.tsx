

export default async function Playnow() { 
   
   const urliframe = "https://4498.indno1f.com";

 return (
       <div className="relative w-full h-[80vh] md:h-screen">


         {/* Click Redirect Overlay */}
      <a href={urliframe}
        target=""
        rel="noopener noreferrer"
        className="absolute inset-0 z-10"
      ></a>


{/* Iframe Preview */}
          <iframe
      src={urliframe}
      title="Example Website"
     className="w-full h-full border-0"
      // Optimize performance with lazy loading
      loading="lazy"
      // Enable full-screen mode if needed
      allowFullScreen
    />
                 
       </div>  
  )

}