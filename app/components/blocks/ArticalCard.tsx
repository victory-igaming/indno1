"use client";

import { BlocksRenderer } from '@strapi/blocks-react-renderer';


const ArticalCard = ({name,description }: any) => {

  return (
     <>
      <div className="mb-2.5" >
          <h2>{name}</h2>         


    <BlocksRenderer 
        content={description} 
        blocks={{
          paragraph: ({ children }) => <p className="text-gray-300 mb-4">{children}</p>,
          heading: ({ children, level }) => {
            if (level === 2) return <h2 className="text-xl font-bold text-white border-l-4 border-red-600 pl-3 my-4">{children}</h2>;
            return <h3 className="text-lg font-bold text-white mt-3">{children}</h3>;
          },
          list: ({ children, format }) => {
            if (format === 'ordered') return <ol className="list-decimal ml-6 space-y-2 text-gray-200">{children}</ol>;
            return <ul className="list-disc ml-6 space-y-2 text-gray-200">{children}</ul>;
          },
        }} 
      />


      <div className="clear-both"></div> 
    </div>      
     </>            

  );
};
export default ArticalCard;