


const TipwarnCard = ({name, description }: any) => (  
  <div className="highlight-box">
            <h3 className="notice-title">💡 {name}</h3>
            <p className="notice-text">
              {description}
            </p>
           
    </div>
);

export default TipwarnCard;