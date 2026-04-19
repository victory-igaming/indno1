


const TipdangerCard = ({name, description }: any) => (  
  <div className="gameimportant-notice">
            <h3 className="notice-title">⚠️ {name}</h3>
            <p className="notice-text">
              {description}
            </p>
           
    </div>
);

export default TipdangerCard;