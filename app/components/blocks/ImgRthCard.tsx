import { getStrapiMedia } from "../../services/strapi";

const ImgRthCard = ({ name,image,description }: any) => {

const comTitle = `Hot Indno 01 ${name}`;
const imageField = image;
const imageUrl =  getStrapiMedia(imageField?.url);
const imageAlt = imageField?imageField.alternativeText:comTitle;
  return (
      <div className="mb-2.5" >
      <h2>{name}</h2>
              
  <div className="float-right mr-12 mb-12 "> 
              <img src={imageUrl?? ""}  alt={imageAlt}  
  width={400} height={400} className=" rounded-lg " style={{marginLeft: 2+'em'}} />
               </div>
             <div>
                  
                 {description.map((block: any, idx: number) => (
                    <div key={idx} >
                      {block.children.map((child: any, cIdx: number) => (
                        <p key={cIdx} className="mb-2">{child.text}</p>
                      ))}
                    </div>
                  ))}               
               </div>  
          <div className="clear-both"></div>        
     </div> 
                

  );
};

export default ImgRthCard;