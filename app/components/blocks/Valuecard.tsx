
import { getStrapiMedia } from "../../services/strapi";


const Valuecard = ({name, description,image }: any) => (  
  <div  className="value-card">
    
                <div className="value-icon">
  <img  src={ image?getStrapiMedia(image?.url):''}  alt={image?.alternativeText || "icon"}  
  className="h-16 w-16 object-contain mb-4 rounded-md shadow-sm" />
</div>
                <h3 className="value-title">{name}</h3>
                <p className="value-description">{description}</p>
              </div>
);

export default Valuecard;