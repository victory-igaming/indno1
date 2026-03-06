import React from "react";
import { getStrapiMedia, strapiFetch } from "../../services/strapi";
import ArticalCard from "../../components/blocks/ArticalCard";
import ImgLftCard from "../../components/blocks/ImgLftCard";
import ImgRthCard from "../../components/blocks/ImgRthCard";
import Faqcard from "../../components/blocks/Faqcard";
import TipwarnCard from "../../components/blocks/TipwarnCard";
import TipsuccessCard from "../../components/blocks/TipsuccessCard";
import TipdangerCard from "../../components/blocks/TipdangerCard";
import qs from "qs";

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
    <div className={`rounded-2xl border border-amber-500/15 p-6 ${className}`} style={{padding:`10px 14px;`}}>
      <h3 className="text-xl font-bold text-amber-400" >{title}</h3>
      <div className="mt-4 space-y-3" >{children}</div>
    </div>
  );
}

function SidebarItem({ title, meta }: { title: string; meta: string }) {
  return (
    <div className="rounded-xl border border-amber-500/10 bg-black/10 p-4 transition hover:bg-black/20" style={{padding:`10px 14px;`}}>
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

export default async function BlogDetails({
  params,
}: {
  params: { slug: string };
}) {
  const COMPONENT_MAP = {
    "support.artical": ArticalCard,
    "support.image-left": ImgLftCard,
    "support.image-right": ImgRthCard,
    "block.tipwarn": TipwarnCard,
    "block.tipsuccess": TipsuccessCard,
    "block.tipdanger": TipdangerCard,
  } as const;

  const { slug } = params;

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
  const response = await strapiFetch(finalUrl);

  if (!response || !response.data?.[0]) {
    return <div>Loading or Error...</div>;
  }

  const { heading, image, blogbody, faqBody, gamecategoty, createdAt } =
    response.data[0];

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
            className="h-[260px] w-full object-cover md:h-[340px]"
          />
        ) : (
          <div className="h-[260px] w-full bg-zinc-900 md:h-[340px]" />
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
                <div className="space-y-2 mt-10"  style={{padding:`12px 14px;`}}>
                <SidebarItem 
                  title="Best Investing Books for 2019 | Phil Town"
                  meta="July 26, 2019"
                />
                <SidebarItem
                  title="Understanding deposits and withdrawals at BC.Game: A Beginner’s Guide Part 2"
                  meta="August 11, 2020"
                />
                <SidebarItem
                  title="Understanding deposits and withdrawals at BC.Game: A Beginner’s Guide Part 1"
                  meta="August 3, 2020"
                /></div>
                
                
              </SidebarBox>
              </div>
            <div className="popularpost-list" >
              <SidebarBox title="Popular Category " className="mt-8 space-y-8">
                <div className="space-y-2 mt-10"  style={{padding:`10px 14px`}}>
                  <CategoryRow label="Blockchain" value="3721" />
                  <CategoryRow label="Investing" value="1883" />
                  <CategoryRow label="BTC News" value="1695" />
                  <CategoryRow label="Cryptocurrencies" value="1256" />
                  <CategoryRow label="Gambling" value="792" />
                  <CategoryRow label="Meme" value="583" />
                  <CategoryRow label="Guides" value="542" />
                  <CategoryRow label="Best Bitcoin Casino" value="427" />
                  <CategoryRow label="Beginner Guides" value="346" />
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