import { strapiFetch } from "@/services/strapi";
import qs from "qs";
import type { Metadata } from "next";
import HomeClient from "@/components/pages/HomeClient";

// Query for metadata
const queryMeta = qs.stringify(
  {
    populate: "*",
  },
  { encodeValuesOnly: true }
);

// Query for homepage content
const queryHome = qs.stringify(
  {
    populate: {
      sportbody: { populate: "*" },
      mainslider: { populate: "*" },
      Featuregame: { populate: "*" },
      faqbody: { populate: "*" },
      textbody: { populate: "*" },
    },
    sort: ["updatedAt:desc"],
    status: "published",
    locale: ["en"],
  },
  { encodeValuesOnly: true }
);

export async function generateMetadata(): Promise<Metadata> {
  try {
    const responseMeta = await strapiFetch(`mastersetting?${queryMeta}`);
    const dataMeta = responseMeta?.data;

    const metaImage = dataMeta?.meta_image?.url
      ? [dataMeta.meta_image.url]
      : [];

    return {
      title:
        dataMeta?.title ||
        "IND NO1 - Most Trusted Gaming & Betting Website - Home",
      keywords: dataMeta?.meta_keyword || "",
      description:
        dataMeta?.meta_discription ||
        "Play online casino, slots, and sports betting in India with fast withdrawals and secure payments.",
      verification: {
        google:
          dataMeta?.google_tagid ||
          "zUiqPXfp8HqGluXdEn54TLZzkqpVLD7EGRL5Am_1pTA",
      },
      openGraph: {
        title:
          dataMeta?.title ||
          "IND NO1 - Most Trusted Gaming & Betting Website - Home",
        description:
          dataMeta?.meta_discription ||
          "Play online casino, slots, and sports betting in India with fast withdrawals and secure payments.",
        images: metaImage,
      },
    };
  } catch (error) {
    console.error("Metadata fetch error:", error);

    return {
      title: "IND NO1 - Most Trusted Gaming & Betting Website - Home",
      description:
        "Play online casino, slots, and sports betting in India with fast withdrawals and secure payments.",
    };
  }
}

export default async function Home() {
  let homeData = null;
  let metaData = null;

  try {
    const [responseHome, responseMeta] = await Promise.all([
      strapiFetch(`landingpage?${queryHome}`),
      strapiFetch(`mastersetting?${queryMeta}`),
    ]);

    homeData = responseHome?.data ?? null;
    metaData = responseMeta?.data ?? null;
  } catch (error) {
    console.error("Homepage fetch error:", error);
  }

  return (
    <HomeClient
      initialData={homeData}
      pageTitle={metaData?.meta_tag}
      description={metaData?.meta_discrp}
    />
  );
}