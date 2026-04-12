"use client";
import { BlocksRenderer } from '@strapi/blocks-react-renderer';
import { getStrapiMedia } from "../../services/strapi";
import { useEffect, useState } from "react";
 

const ImgVdoCard = ({ name,image,bannerurl }: any) => {


 const [mounted, setMounted] = useState(false);
useEffect(() => setMounted(true), []); 
if (!mounted) return null; // skip render until client

const comTitle = `Hot Indno 01 ${name}`;
const imageField = image;
const imageUrl = getStrapiMedia(imageField?.url);
const imageAlt = imageField?imageField.alternativeText:comTitle;

const BASE_URL = process.env.API_TOKEN_SALT;

//const url = `${BASE_URL}${image.url}`;
const mime = image.mime;

  return (
      <div className="mb-2.5" >
      {/* <h2>{name}</h2> */}

      
       <div className="float-left mr-12 mb-12 ">   

        {mime?.includes("video") && imageUrl ? (
  <video
    
    muted
    loop
    playsInline
    className="rounded-lg w-full"
    controls
  >
    <source src={imageUrl} type={mime} />
    Your browser does not support the video tag.
  </video>
) : (
  <>
    {bannerurl ? (
      <a href={bannerurl}>
        <img
          src={imageUrl ?? ''}
          alt={name}
          width={1300}
          height={400}
          className="rounded-lg"
          style={{ margin: "2em" }}
          loading="lazy"
          fetchPriority="high"
        />
      </a>
    ) : (
      <img
        src={imageUrl ?? ''}
        alt={name}
        width={1300}
        height={400}
        className="rounded-lg"
        style={{ margin: "2em" }}
        loading="lazy"
        fetchPriority="high"
      />
    )}
  </>
)}

      </div>

               
      <div className="clear-both"></div> 
     </div> 
                

  );
};

export default ImgVdoCard;