
  
  import { strapiFetch,getStrapiMedia } from "../services/strapi";

  import NextImage from 'next/image';


  import qs from 'qs';

  const liveSlot = [
    { id: '1', title: 'Live Casino', image: '/images/110.png', icon: '🎰'},
    { id: '5', title: 'Live Casino', image: '/images/75.png', icon: '🎰'},
    { id: '2', title: 'Live Casino', image: '/images/106.png', icon: '🎰'},
     { id: '6', title: 'Live Casino', image: '/images/42.png', icon: '🎰'},
    { id: '3', title: 'Live Casino', image: '/images/100.png', icon: '🎰'},
    { id: '4', title: 'Live Casino', image: '/images/92_en.png', icon: '🎰'},  
   
  ];


export default async function Slots() {


  // Loading Category
    const queryCat = qs.stringify({
      pagination: {
      limit: 6,
      },
      populate: {
        iamge: { populate: '*' },       
      },
      filters: {
        gamecategoties: {
          seourl: {
            $eq: 'casino',
          },
        },
      },
      sort: ['updatedAt:desc'],
      status: 'published',
      locale: ['en'],
    }, { encodeValuesOnly: true });
  
  const catfinalUrl = `playgames?${queryCat}`;
  const  responsecat = await strapiFetch(catfinalUrl);
  const liveCasinoList  = responsecat.data;
  //console.log(liveCasinoList); 



  return (
    <div className="live-section">
              <div className="section-header">
                <h3 className="section-title">🎰 Slots</h3>
               
              </div>
              <div className="casino-grid">
                   {liveCasinoList.map((lcasino: any, kkids: any) => {

           const imageUrl = getStrapiMedia(lcasino.iamge?.url);
           
            return(
            
            <div key={kkids} className="casino-item max-h-50" >
           <img  src={imageUrl??""}  alt={lcasino.title}  width={200}  height={200}   />
                  </div>) 
          })}
               
              </div>
            </div>
  )
}
