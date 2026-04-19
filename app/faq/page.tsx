import { strapiFetch, getStrapiMedia } from "../services/strapi";
import qs from "qs";

import FAQClient from "@/components/FAQClient";

import { Metadata } from 'next';
export async function generateMetadata({params}: {params: Promise<{ slug: string }>}): Promise<Metadata> {

  const queryMata = qs.stringify({
        populate: '*',
      }, { encodeValuesOnly: true });

     try {
         
        // const responseMata = await strapiFetch(`gamepages?${queryMata}`);
        const responseMata = await strapiFetch(`faq?${queryMata}`);     
       // const dataMata = responseMata.data; 
        //console.log("responseMata : ",responseMata);
        const dataMata = responseMata.data; 
        //console.log("dataMata : ",dataMata);

        return {
          title: dataMata?.title || process.env.META_TITLE,
          keywords: dataMata?.meta_tag || process.env.META_KEYWD,
          description: dataMata?.meta_discrp || process.env.META_DISCRP,           
          openGraph: {
            title: dataMata?.title,
            description: dataMata?.meta_discrp,
            images: dataMata?.gamebanner?.url ? [dataMata.gamebanner.url] : [],
          },
        };
     
       } catch (error) {
         console.error("Metadata fetch error:", error);
         return { title: "IND NO1 - Most Trusted Gaming &amp; Betting Website - Home" };
       }
   
   }


export default async function Faq() {

  const query = qs.stringify(
    {
      fields: ["title", "description", "seourl"],
      populate: {
        image: { populate: "*" },
        faqbody: { populate: "*" },
      },
      status: "published",
      locale: ["en"],
    },
    { encodeValuesOnly: true }
  );

  const response = await strapiFetch(`faq?${query}`);

  if (!response?.data) {
    return <div>Loading or Error...</div>;
  }

  const { title, description, faqbody } = response.data;

  /* ---------------- CATEGORY FETCH ---------------- */

  const queryCat = qs.stringify(
    {
      populate: {
        icon: { populate: "*" },
      },
      status: "published",
      locale: ["en"],
    },
    { encodeValuesOnly: true }
  );

  const responsecat = await strapiFetch(`faqtypes?${queryCat}`);

  const faqcategories =
    responsecat?.data?.map((item: any) => ({
      id: item.id,
      name: item.title,
      category: item.gamecategoty?.pagename || "General",
      icon: item?.icon?.url
        ? getStrapiMedia(item.icon.url)
        : "/placeholder.jpg",
      slug: item.seoUrl,
    })) || [];

  return (
    <>
      {/* Hero */}
      <section className="hero-section">
        <div className="hero-content">
          <h1 className="hero-title">{title}</h1>
          <p className="hero-subtitle">{description}</p>
        </div>
      </section>

      {/* Stats */}
      <div className="stats-bar">
        <div className="stats-card">
          <div className="stats-icon">📚</div>
          <div className="stats-number">{faqbody?.length || 0}+</div>
          <div className="stats-label">Questions Answered</div>
        </div>

        <div className="stats-card">
          <div className="stats-icon">⚡</div>
          <div className="stats-number">2 min</div>
          <div className="stats-label">Avg Response Time</div>
        </div>

        <div className="stats-card">
          <div className="stats-icon">💬</div>
          <div className="stats-number">24/7</div>
          <div className="stats-label">Support Available</div>
        </div>

        <div className="stats-card">
          <div className="stats-icon">😊</div>
          <div className="stats-number">98%</div>
          <div className="stats-label">Satisfaction Rate</div>
        </div>
      </div>

      {/* FAQ Filter + List */}
      <FAQClient categories={faqcategories} faqbody={faqbody} />
    </>
  );
}