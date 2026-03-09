
import { getStrapiMedia} from "@/services/strapi";

const Employecard = ({name,designation,image }: any) => {

const comTitle = "Hot Indno 01 games";
const imageField = image;
const imageUrl = getStrapiMedia(imageField?.url);
const imageAlt = imageField?imageField.alternativeText:comTitle;
return (

<div  className="team-card">
                <div className="team-avatar">
                   {imageUrl && imageUrl !== "" ? ( 
                    <img 
  src={imageUrl} 
  alt={image?.alternativeText || "image"}  className="h-16 w-16 object-contain mb-4 rounded-md shadow-sm"
  loading="lazy" 
  fetchPriority="high"
/>
  ) : null} 
                  </div>
                <div className="team-name">{name}</div>
                <div className="team-role">{designation}</div>
              </div>



)};

export default Employecard;