import { BlocksRenderer } from "@strapi/blocks-react-renderer";
import { useState } from "react";

function Homemore({ hblockgame }: any) {

  const [showModal, setShowModal] = useState(false);

  console.log("hblockgame :: ", hblockgame);

  return (
    <section className="faq-item">

      <button
        onClick={() => setShowModal(prev => !prev)}
        className="text-zinc-50"
        style={{ padding: "10px 20px" }}
      >
        {showModal ? "Close" : "Read More"}
      </button>

      {showModal && (
        <div className="section-text" style={{ padding: "10px 50px" }}>

          {hblockgame?.map((hblock: any, index: number) => {

            const safeContent = hblock?.description || [];

            return (
              <BlocksRenderer
                key={index}
                content={safeContent}
                blocks={{
                  paragraph: ({ children }) => (
                    <p className="text-gray-300 mb-4 leading-relaxed">{children}</p>
                  ),

                  heading: ({ children, level }) => {
                    switch (level) {
                      case 1:
                        return <h1 className="text-2xl font-extrabold text-white mb-4"> {children}</h1>;
                      case 2:
                        return <h2 className="text-xl font-bold text-white border-l-4 border-red-600 pl-3 my-4"> {children}</h2>;
                      case 3:
                        return <h3 className="text-lg font-bold text-white mt-3 mb-2"> {children}</h3>;
                      case 5:
                        return <h5 className="text-lg font-bold text-white mt-3 mb-2"> {children}</h5>;
                      case 6:
                        return <h6 className="text-lg font-bold text-white mt-3 mb-2"> {children}</h6>;
                      default:
                        return <h4 className="text-md font-bold text-white mt-2"> {children}</h4>;
                    }
                  },

                  list: ({ children, format }) => {

                    if (format === "ordered") {
                      return <ol className="list-decimal pl-10 pr-6 py-2 mb-4 space-y-3 text-gray-200" >{children}</ol>;
                    }

                    return <ul className="list-disc pl-12 pr-8 py-2 mb-6 space-y-8 space-x-2 text-gray-200" >{children}</ul>;
                  },

                  link: ({ children, url }) => (
                    <a
                      href={url}
                      target="_blank"
                      rel="noopener noreferrer"
                      className="text-red-500 hover:text-red-400 underline transition-colors"
                    >
                      {children}
                    </a>
                  ),

                  quote: ({ children }) => (
                    <blockquote className="border-l-4 border-gray-500 italic pl-4 my-4 text-gray-400">
                      {children}
                    </blockquote>
                  ),

                  image: ({ image }) => (
                    <div className="my-6">
                      <img
                        src={image.url}
                        alt={image.alternativeText || "Content Image"}
                        className="rounded-lg max-w-full h-auto border border-zinc-700"
                      />
                    </div>
                  ),
                }}

                modifiers={{
                  bold: ({ children }) => (
                    <strong className="font-bold text-white">{children}</strong>
                  ),
                  italic: ({ children }) => <em className="italic">{children}</em>,
                  code: ({ children }) => (
                    <code className="bg-zinc-800 text-red-400 px-1 py-0.5 rounded font-mono text-sm">
                      {children}
                    </code>
                  ),
                }}
              />
            );
          })}

        </div>
      )}
    </section>
  );
}

export default Homemore;