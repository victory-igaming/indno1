


const Employecard = ({name,designation,image }: any) => (  
            <div  className="team-card">
                <div className="team-avatar"><img 
  src={`http://localhost:1337${image?.url}`} 
  alt={image?.alternativeText || "image"}  className="h-16 w-16 object-contain mb-4 rounded-md shadow-sm"
/></div>
                <div className="team-name">{name}</div>
                <div className="team-role">{designation}</div>
              </div>
);

export default Employecard;