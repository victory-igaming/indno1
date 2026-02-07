



const ArticalCard = ({name,description }: any) => {

  return (
     <>
      <div className="mb-2.5" >
          <h2>{name}</h2>
                  {description.map((block: any, idx: number) => (
                        <div key={idx} >
                          {block.children.map((child: any, cIdx: number) => (
                            <p key={cIdx} className="mb-2 ml-4 p-4">{child.text}</p>
                          ))}
                        </div>
                      ))} 
      <div className="clear-both"></div> 
    </div>      
     </>            

  );
};
export default ArticalCard;