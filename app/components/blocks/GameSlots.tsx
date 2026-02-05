"use client";  
import { getStrapiMedia } from "../../services/strapi";

  const ChevronRight = () => (
  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
    <polyline points="9 18 15 12 9 6"></polyline>
  </svg>
);

const ChevronLeft = () => (
  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
    <polyline points="15 18 9 12 15 6"></polyline>
  </svg>
);


const GameSlots = ({ id,title, image, description }: any) => {

const comTitle = `${title}  Indno 01 games`;
const imageField = image;
const imageUrl = getStrapiMedia(imageField?.url);
const imageAlt = imageField?imageField.alternativeText:comTitle;

  return (
    <div key={id} className="casino-item">
        <img  src={imageUrl?? ""}  alt={imageAlt}   width={340}   height={180}  />
    </div>
   
                

  );
};

export default GameSlots;