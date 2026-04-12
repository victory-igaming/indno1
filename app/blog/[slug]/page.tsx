import React from "react";
import { getStrapiMedia, strapiFetch } from "@/services/strapi";
import ArticalCard from "@/components/blocks/ArticalCard";
import ImgLftCard from "@/components/blocks/ImgLftCard";
import ImgRthCard from "@/components/blocks/ImgRthCard";
import Faqcard from "@/components/blocks/Faqcard";
import TipwarnCard from "@/components/blocks/TipwarnCard";
import TipsuccessCard from "@/components/blocks/TipsuccessCard";
import TipdangerCard from "@/components/blocks/TipdangerCard";
import qs from "qs";
import Link from "next/link";



import { Metadata } from 'next';

export async function generateMetadata({ 
  params 
}: { 
  params: Promise<{ slug: string }> 
}): Promise<Metadata> {
   

  const { slug } = await params;

    const queryMata = qs.stringify({
      filters: {
    seoUrl: { // Make sure this matches your Strapi field name (case-sensitive)
      $eq: slug,
    },
  },
    populate: '*',
  }, { encodeValuesOnly: true });


     try {
         
        // const responseMata = await strapiFetch(`gamepages?${queryMata}`);
        const responseMata = await strapiFetch(`blogs?${queryMata}`);     
       // const dataMata = responseMata.data; 
        const dataMata = responseMata.data?.[0]; 
        return {
          title: dataMata?.heading || process.env.META_TITLE,
          keywords: dataMata?.meta_tag || process.env.META_KEYWD,
          description: dataMata?.meta_discrp || process.env.META_DISCRP,     
          verification: {
            google: dataMata?.google_tagid || process.env.META_GGTAG,
          },
          openGraph: {
            title: dataMata?.heading,
            description: dataMata?.meta_discrp,
            images: dataMata?.gamebanner?.url ? [dataMata.gamebanner.url] : [],
          },
        };
     
       } catch (error) {
         console.error("Metadata fetch error:", error);
         return { title: "IND NO1 - Most Trusted Gaming &amp; Betting Website - Home" };
       }
   
   }




/** ✅ Sidebar components styled like article section */
function SidebarBox({
  title,
  children,
  className = "",
}: {
  title: string;
  children: React.ReactNode;
  className?: string;
}) {
  return (
    <div className={`rounded-2xl border border-amber-500/15 p-6 ${className}`} style={{padding: "10px 14px"}}>
      <h3 className="text-xl font-bold text-amber-400" >{title}</h3>
      <div className="mt-4 space-y-3" >{children}</div>
    </div>
  );
}

function SidebarItem({ title, meta }: { title: string; meta: string }) {
  return (
    <div className="rounded-xl border border-amber-500/10 bg-black/10 p-4 transition hover:bg-black/20" style={{padding: "10px 14px"}}>
      <p className="line-clamp-2 text-base font-semibold leading-snug text-amber-100">
        {title}
      </p>
      <p className="mt-1 text-sm text-amber-200/70">{meta}</p>
    </div>
  );
}

function CategoryRow({ label, value }: { label: string; value: string }) {
  return (
    <div className="flex items-center justify-between rounded-xl border border-amber-500/10 bg-black/10 px-4 py-3 transition hover:bg-black/20" style={{padding:`10px 14px`}}>
      <span className="text-base font-medium text-amber-100">{label}</span>
      <span className="text-sm font-semibold text-amber-300">{value}</span>
    </div>
  );
}

export default async function BlogDetails({ params }: {
  params: Promise<{ slug: string }> 
}) {
  const COMPONENT_MAP = {
    "support.artical": ArticalCard,
    "support.image-left": ImgLftCard,
    "support.image-right": ImgRthCard,
    "support.faq": Faqcard,  
    "block.tipwarn": TipwarnCard,
    "block.tipsuccess": TipsuccessCard,
    "block.tipdanger": TipdangerCard,
    
  } as const;

const { slug } = await params;

const query = qs.stringify(
  {
    filters: {
      seoUrl: { $eq: slug },
    },
    populate: {
      image: { populate: "*" },
      gamecategoty: { populate: "*" },
      blogbody: { populate: "*" },
      faqBody: { populate: "*" },
    },
  },
  { encodeValuesOnly: true }
);

const finalUrl = `blogs?${query}`;

const popularQuery = qs.stringify(
  {
    filters: {
      seoUrl: { $ne: slug },
    },
    fields: ["heading", "seoUrl", "createdAt"],
    sort: ["createdAt:desc"],
    pagination: {
      limit: 5,
    },
  },
  { encodeValuesOnly: true }
);

const categoryQuery = qs.stringify(
  {
    populate: {
      blogs: {
        fields: ["id"],
      },
    },
    pagination: {
      limit: 10,
    },
  },
  { encodeValuesOnly: true }
);

const [response, popularResponse, categoryResponse] = await Promise.all([
  strapiFetch(finalUrl),
  strapiFetch(`blogs?${popularQuery}`),
  strapiFetch(`gamepages?${categoryQuery}`),
]);

if (!response || !response.data?.[0]) {
  return <div>Loading or Error...</div>;
}

const popularPosts = popularResponse?.data || [];
const categories = categoryResponse?.data || [];

const sortedCategories = [...categories].sort(
  (a: any, b: any) => (b.blogs?.length || 0) - (a.blogs?.length || 0)
);

  const { heading, image, blogbody, faqBody, gamecategoty, createdAt } = response.data[0];

  const comTitle = `Hot Indno 01 ${heading}`;
  const imageUrl = getStrapiMedia(image?.url);
  const imageAlt = image?.alternativeText ?? comTitle;
  const dateOnly = new Date(createdAt).toISOString().split("T")[0];

  return (
    <>
      {/* HERO */}
      <section className="herogame-section relative">
        {imageUrl ? (
          <img
            src={imageUrl}
            alt={imageAlt}
            className="h-65 w-full object-cover md:h-85"
          />
        ) : (
          <div className="h-[260px] w-full bg-zinc-900 md:h-85" />
        )}

        <div className="absolute inset-0 bg-gradient-to-t from-black/80 via-black/50 to-black/30" />

        {/* ✅ Title block with left + bottom padding */}
        <div className="absolute inset-x-0 bottom-5 left-5 z-10 pr-6">
          <div className="px-6 pb-10 pt-6">
            <div className="flex items-center">
              <span className="inline-flex items-center bg-amber-900/70 text-amber-100 ring-1 ring-amber-200/20 rounded-full" style={{padding:`5px 12px`}}>
                {gamecategoty?.pagename}
              </span>
            </div>

            <h1 className="mt-4 max-w-4xl text-left text-3xl font-bold leading-tight text-amber-400 md:text-4xl">
              {heading}
            </h1>

            <div className="mt-6 flex items-center gap-6 text-sm text-gray-300">
              <span>Published Date : {dateOnly}</span>
            </div>
          </div>
        </div>
      </section>

      {/* BODY */}
      <main className="mx-auto w-full max-w-6xl px-4 py-8">
        <div className="grid gap-6 lg:grid-cols-12">
          <article className="article-content lg:col-span-8">
            <div className="content-block">
              {Array.isArray(blogbody) &&
                blogbody.map((item: any, idx: number) => {
                  const Component =
                    COMPONENT_MAP[
                      item.__component as keyof typeof COMPONENT_MAP
                    ];
                  return Component ? (
                    <Component key={`aticl-${idx}`} {...item} />
                  ) : null;
                })}
            </div>
          </article>

          {/* SIDEBAR */}
          <aside className="lg:col-span-4">
            <div className="space-y-8">
              <div className="popularpost-list " >
              <SidebarBox title="Popular Posts">
        <div className="space-y-2 mt-10" style={{ padding: "12px 14px" }}>
          {popularPosts.map((post: any) => (
            <Link key={post.id} href={`/blog/${post.seoUrl}`} className="block">
              <SidebarItem
                title={post.heading}
                meta={new Date(post.createdAt).toLocaleDateString("en-US", {
                  year: "numeric",
                  month: "long",
                  day: "numeric",
                })}
              />
            </Link>
          ))}
        </div>
      </SidebarBox>
              </div>
            <div className="popularpost-list" >
              <SidebarBox title="Popular Category">
  <div className="space-y-2 mt-10" style={{ padding: "10px 14px" }}>
    {sortedCategories.map((cat: any) => (
      <CategoryRow
        key={cat.id}
        label={cat.pagename}
        value={cat.blogs?.length || 0}
      />
    ))}
  </div>
</SidebarBox>
              </div>

              {/* FAQ List */}
              <div className="faqgame-list">
                <h2 className="section-title capitalize">FAQ</h2>
                {Array.isArray(faqBody) &&
                  faqBody.map((item: any) => (
                    <Faqcard
                      key={item.id}
                      id={item.id}
                      name={item.name}
                      image={item.image}
                      description={item.description}
                    />
                  ))}
              </div>
            </div>
          </aside>
        </div>
      </main>
    </>
  );
}