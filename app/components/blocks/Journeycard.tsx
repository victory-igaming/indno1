


const Journeycard = ({year,title,description }: any) => (  
  <div className="milestone">
                <div className="milestone-content">
                  <div className="milestone-year">{year}</div>
                  <div className="milestone-event">{title}</div>
                  <div className="milestone-description">{description}</div>
                </div>
                <div className="milestone-dot"></div>
   </div>
);

export default Journeycard;