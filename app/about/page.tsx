


import { strapiFetch } from "../services/strapi";
import StarCard  from "../components/blocks/Starcard";
import ValueCard  from "../components/blocks/Valuecard";
import journeyCard  from "../components/blocks/Journeycard";
import EmployeCard  from "../components/blocks/Employecard";
import qs from 'qs';

import { BlocksRenderer } from '@strapi/blocks-react-renderer';

 const stats = [
    { number: '10M+', label: 'Active Players' },
    { number: '500+', label: 'Games Available' },
    { number: '24/7', label: 'Customer Support' },
    { number: '99.9%', label: 'Uptime Guarantee' },
  ];

  const values = [
    { icon: '🎯', title: 'Fair Play', description: 'We ensure transparent and fair gaming for all our players with certified random number generators.' },
    { icon: '🔒', title: 'Secure Platform', description: 'Your data and transactions are protected with bank-level encryption and security measures.' },
    { icon: '⚡', title: 'Fast Payouts', description: 'Quick and hassle-free withdrawals with multiple payment options available 24/7.' },
    { icon: '🏆', title: 'Best Odds', description: 'Competitive odds and exciting bonuses to maximize your winning potential.' },
  ];

  const team = [
    { name: 'Rajesh Kumar', role: 'CEO & Founder', img: '👨‍💼' },
    { name: 'Priya Sharma', role: 'Head of Operations', img: '👩‍💼' },
    { name: 'Amit Patel', role: 'Technical Director', img: '👨‍💻' },
    { name: 'Sneha Reddy', role: 'Customer Relations', img: '👩‍💻' },
  ];

  const milestones = [
    { year: '2018', event: 'Company Founded', description: 'Started with a vision to revolutionize online gaming in India' },
    { year: '2019', event: 'First Million Users', description: 'Reached 1 million registered users within first year' },
    { year: '2021', event: 'International Expansion', description: 'Expanded services to 5 Asian countries' },
    { year: '2024', event: 'Industry Leader', description: 'Became the most trusted gaming platform in India' },
  ];


  // 1. Map the Strapi component string to your React Component
const COMPONENT_MAP = {
  "block.starcard": StarCard,
  "block.valuecard": ValueCard,
  "block.journey-card": journeyCard,
  "support.employecard": EmployeCard,
};

export default async function Aboutus() { 
     //const articles = await getArticles();

const query = qs.stringify({
  fields: ['name', 'seourl', 'createdAt', 'publishedAt', 'updatedAt'],
  populate: {
    heading: { populate: '*' },    
    startcard: { populate: '*' },
    about: { populate: '*' },   
    ourcore: { populate: '*' },
    journey: { populate: '*' },
    leadership: { populate: '*' },
  },
  status: 'published',
  locale: ['en'],
}, { encodeValuesOnly: true });

const finalUrl = `aboutus?${query}`;

console.log(finalUrl);

    const response = await strapiFetch(finalUrl);
   // console.log(response);
    // 1. Check if response exists
if (!response || !response.data) {
  return <div>Loading or Error...</div>; 
}

// 2. Access the fields from inside data
const { heading, about, startcard, ourcore, journey, leadership } = response.data;

  // console.log(heading);console.log(about);console.log(startcard);console.log(ourcore);
  
 
 return (
          <>   

           {/* Hero Section */}
        <section className="hero-section">
          <div className="hero-content">
            <h1 className="hero-title">{heading?heading.name:''}</h1>
            <p className="hero-subtitle">{heading?heading.description:''}</p>
          </div>
        </section>

           {/* Stats Section */}
        <div className="stats-grid">
          {startcard.map((item: any) => {
          const Component = COMPONENT_MAP[item.__component as keyof typeof COMPONENT_MAP];
          return Component ? <Component key={`strd-${item.id}`} {...item} /> : null;
        })}
        </div>

          {/* Our Story */}
          <div className="story-section">
            <h2 className="section-title">{about.name}</h2>
             <p className="story-text">
            
              
                {about.moredescription && <BlocksRenderer content={about.moredescription} />}
            </p> 
                      
          </div>

          {/* Our Values */}
          <h2 className="section-title">Our Core Values</h2>
          <p className="section-subtitle">
            These principles guide everything we do and shape the experience we deliver to our players
          </p>
          <div className="values-grid">
           {ourcore.map((item: any) => {
          const Component = COMPONENT_MAP[item.__component as keyof typeof COMPONENT_MAP];
          return Component ? <Component key={`ocr-${item.id}`} {...item} /> : null;
        })}
          </div>

          {/* Timeline */}
          <h2 className="section-title">Our Journey</h2>
          <p className="section-subtitle">
            Key milestones that shaped our path to becoming India&rasqua;s #1 gaming platform
          </p>
          <div className="timeline">           
          {journey.map((item: any) => {
            const Component = COMPONENT_MAP[item.__component as keyof typeof COMPONENT_MAP];
            return Component ? <Component key={`jnrya-${item.id}`} {...item} /> : null;
          })}
          </div>


          {/* CTA Section */}
          <div className="cta-section">
            <h2 className="cta-title">Ready to Join the Winning Team?</h2>
            <p className="cta-text">
              Experience the thrill of India&rasqua;s #1 gaming platform with exclusive bonuses and 24/7 support
            </p>
            <button className="cta-button">Start Playing Now</button>
          </div>
                 
          </>    
  )

}