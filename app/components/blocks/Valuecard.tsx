

import { getStrapiMedia } from "../../services/strapi";
import { BlocksRenderer } from '@strapi/blocks-react-renderer';

const Valuecard = ({name, description, moredescription, image }: any) => {

const comTitle = "Hot Indno 01 games";
const imageField = image;
const imageUrl = getStrapiMedia(imageField?.url);
const imageAlt = imageField?imageField.alternativeText:comTitle;
console.log(moredescription);
return (
<div  className="value-card">
    
                <div className="value-icon">
  
  {imageUrl && imageUrl !== "" ? (<img  src={imageUrl}  alt={image?.alternativeText || "icon"} className="h-16 w-16 object-contain mb-4 rounded-md shadow-sm" />) : null} 
</div>
                <h3 className="value-title">{name}</h3>
                <p className="value-description">
                {moredescription && <BlocksRenderer content={moredescription} />}</p>
</div>
)};

export default Valuecard;