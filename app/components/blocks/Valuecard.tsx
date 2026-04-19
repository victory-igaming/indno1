
import { getStrapiMedia } from "../../services/strapi";


const Valuecard = ({name, description,image }: any) => {

const comTitle = "Hot Indno 01 games";
const imageField = image;
const imageUrl = getStrapiMedia(imageField?.url);
const imageAlt = imageField?imageField.alternativeText:comTitle;

return (
<div  className="value-card">
    
                <div className="value-icon">
  
  {imageUrl && imageUrl !== "" ? (<img  src={imageUrl}  alt={image?.alternativeText || "icon"} className="h-16 w-16 object-contain mb-4 rounded-md shadow-sm" loading="lazy" fetchPriority="high" />) : null} 
</div>
                <h3 className="value-title">{name}</h3>
                <p className="value-description">{description}</p>
</div>
)};

export default Valuecard;