


const Starcard = ({name, description }: any) => (  
  <div className="stat-card">
    <div className="stat-number">{description}</div>
    <div className="stat-label">{name}</div>
</div>
);

export default Starcard;