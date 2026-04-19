import { getBlogBySlug, getStrapiMedia, strapiFetch } from "@/services/strapi";
import GameSlots from "@/components/blocks/GameSlots";
import { headers } from "next/headers";

import ArticalCard from "@/components/blocks/ArticalCard";
import ImgLftCard from "@/components/blocks/ImgLftCard";
import ImgRthCard from "@/components/blocks/ImgRthCard";
import GameTabs from "@/components/blocks/GameTabs";

import TipwarnCard from "@/components/blocks/TipwarnCard";
import TipsuccessCard from "@/components/blocks/TipsuccessCard";
import TipdangerCard from "@/components/blocks/TipdangerCard";
import Faqcard from "@/components/blocks/Faqcard";
import SupportBlocks from "@/components/SupportBlocks";
import ImageVdoCard from "@/components/blocks/ImageVdoCard";

import GamesPlay from "@/components/GamesPlay";

import qs from "qs";
import { data } from "framer-motion/client";
import { Metadata } from "next";

export async function generateMetadata({
  params,
}: {
  params: Promise<{ slug: string }>;
}): Promise<Metadata> {
  const { slug } = await params;

  const queryMata = qs.stringify(
    {
      filters: {
        seourl: {
          // Make sure this matches your Strapi field name (case-sensitive)
          $eq: slug,
        },
      },
      populate: "*",
    },
    { encodeValuesOnly: true },
  );

  try {
    // const responseMata = await strapiFetch(`gamepages?${queryMata}`);
    const responseMata = await strapiFetch(`playgames?${queryMata}`);
    // const dataMata = responseMata.data;
    const dataMata = responseMata.data?.[0];
    return {
      title: dataMata?.meta_title
        ? dataMata?.meta_title
        : process.env.META_TITLE,
      keywords: dataMata?.meta_tag
        ? dataMata?.meta_tag
        : process.env.META_KEYWD,
      description: dataMata?.meta_discrp
        ? dataMata?.meta_discrp
        : process.env.META_DISCRP,
      verification: {
        google: dataMata?.google_tagid
          ? dataMata?.google_tagid
          : process.env.META_GGTAG,
      },
      openGraph: {
        title: dataMata?.meta_title
          ? dataMata?.meta_title
          : process.env.META_TITLE,
        description: dataMata?.meta_discrp,
        images: dataMata?.gamebanner?.url ? [dataMata.gamebanner.url] : [],
      },
    };
  } catch (error) {
    console.error("Metadata fetch error:", error);
    return {
      title: "IND NO1 - Most Trusted Gaming &amp; Betting Website - Home",
    };
  }
}

export default async function SponsorDetails({
  params,
}: {
  params: Promise<{ slug: string }>;
}) {
  const gameId = `ltu5pmvk3ks0ztofpmsj74ih`;

  const COMPONENT_MAP = {
    "support.artical": ArticalCard,
    "support.image-left": ImgLftCard,
    "support.image-right": ImgRthCard,
    "support.suportcard": SupportBlocks,
    "support.image-block": ImageVdoCard,

    "block.tipwarn": TipwarnCard,
    "block.tipsuccess": TipsuccessCard,
    "block.tipdanger": TipdangerCard,
  };

  const headerList = await headers();
  const ip = headerList.get("x-forwarded-for")?.split(",")[0] || "127.0.0.1";

  const FAQ_MAP = {
    "support.faq": Faqcard,
  };

  const { slug } = await params;
  //console.log(slug);

  const query = qs.stringify(
    {
      filters: {
        seourl: {
          // Make sure this matches your Strapi field name (case-sensitive)
          $eq: slug,
        },
      },
      populate: {
        gamebanner: { populate: "*" },
        gameicon: { populate: "*" },
        gameimage: { populate: "*" },
        gamecategoties: { populate: "*" },
        bodysponce: { populate: "*" },
        gamebody: {
          populate: {
            gameview: { populate: "*" },
          },
        },
        sponsors: {
          populate: {
            logo: { populate: "*" },
          },
        },
      },
    },
    { encodeValuesOnly: true },
  );

  const finalUrl = `playgames?${query}`;
  //console.log(`response ${finalUrl}`);
  const response = await strapiFetch(finalUrl);
  //const response = await getBlogBySlug(slug);
  //console.log(`response ${response}`);

  if (!response || !response.data?.[0]) {
    return <div>Loading or Error...</div>;
  }

  const game = response?.data?.[0] || {};

  const {
    gamename,
    description,
    gameicon,
    gamebanner,
    gameimage,
    gamecategoties,
    bodysponce,
    gameplayurl,
    isIframeuse,
    startprice,
    pricerate,
    createdAt,
    sponsors,
    gamebody,
  } = game;
  //const myData = response.data;

  const comTitle = `Hot Indno 01 ${gamename}`;
  const imageField = gamebanner ? gamebanner : gameicon;
  const imageGame = gameimage ? gameimage : gameicon;
  const imageUrl = getStrapiMedia(imageField?.url);
  const imagegameUrl = getStrapiMedia(imageGame?.url);

  const imagesponce = sponsors[0] ? sponsors[0]?.logo : gameicon;
  const imagesponceUrl = getStrapiMedia(imagesponce?.url);
  //console.log("sponsors : ",sponsors.url);
  //console.log("imagesponceUrl : ",imagesponce);
  const imageAlt = imageField ? imageField.alternativeText : comTitle;

  {
    /*  IND Calculations */
  }
  const createdDate = new Date(createdAt);
  const today = new Date();
  const diffTime = today.getTime() - createdDate.getTime();
  const diffDays = Math.floor(diffTime / (1000 * 60 * 60 * 24));

  const numofdays = diffDays ? diffDays : 1;
  const priceStart = startprice
    ? startprice
    : Math.floor(Math.random() * (250000 - 2500 + 1)) + 2500;
  const dayRate = pricerate ? pricerate : 50;

  const dayvalue = (priceStart * dayRate) / 100 / 100;

  const printamount = Math.floor(priceStart + dayvalue * numofdays)
    .toLocaleString("en-IN", {
      style: "currency",
      currency: "INR",
      minimumFractionDigits: 2,
    })
    .replace("₹", "₹ ");

  const queryCat = qs.stringify(
    {
      pagination: {
        limit: 20,
      },
      populate: {
        gameicon: { populate: "*" },
      },
      filters: {
        gamecategoties: {
          pagename: {
            $eq: gamecategoties?.pagename || "hot",
          },
        },
      },
      sort: ["updatedAt:desc"],
      status: "published",
      locale: ["en"],
    },
    { encodeValuesOnly: true },
  );

  const qeryResponce = `playgames?${queryCat}`;
  //console.log(" qeryResponce : ",qeryResponce);
  const catresponse = await strapiFetch(qeryResponce);
  //console.log(" catresponse : ",catresponse);
  let playgames = catresponse?.data || [];
  playgames = playgames.sort(() => Math.random() - 0.5);

  // const categoryGames = response.data.filter((gamecat: any) => Array.isArray(gamecat.gamecategoties) ? gamecat.gamecategoties.some((c: any) => c.id === gamecategoties.id)
  // : gamecat.gamecategoties?.id === gamecategoties.id  );

  //console.log("Game Body Tabs:", gamebody);

  /* */
  return (
    <>
      {/* Herogame Section */}
      <section className="herogame-section max-h-100">
        {imageUrl && imageUrl !== "" ? (
          <img src={imageUrl} alt={imageAlt} width={1360} height={200} />
        ) : null}
      </section>

      <main className="mx-auto w-full max-w-8xl px-1 py-4">
        <div className="grid gap-2 lg:grid-cols-12">
          {/* Main Content */}
          <article className="gamearticle-content  lg:col-span-9">
            <div className="game-box">
              <section className="boxgame-play">
                <div className="game-container">
                  {/* Game background (iframe or image) */}
                  <div className="w-full max-h-120 aspect-video overflow-hidden rounded-md">
                    {imagegameUrl && imagegameUrl !== "" ? (
                      <img
                        src={imagegameUrl}
                        alt={imageAlt}
                        className="w-full h-full object-cover"
                      />
                    ) : null}
                  </div>

                  {/* Buttons Overlay */}
                  <div className="play-buttons">
                    {gameplayurl && (
                      <GamesPlay
                        gamename={gamename}
                        demogameurl={gameplayurl}
                        userIp={ip}
                        isiframe={isIframeuse}
                      />
                    )}
                  </div>
                </div>
              </section>

              {/* GAME INFO CARD */}

              <section className="boxgame-section">
                <div className="game-info-card">
                  <div className="game-info-left">
                    <h1>{gamename}</h1>
                    <p>{description}</p>
                  </div>

                  <div className="game-info-right">
                      {/* Game background (iframe or image) */}
                      <div className="w-full max-h-120 aspect-video overflow-hidden rounded-md">
                    {imagesponceUrl && (
                      <img
                        src={imagesponceUrl}
                        alt={imageAlt}
                        width={200}
                        height={60}
                      />
                    )}</div>

                    <div className="game-amount">{printamount}</div>
                  </div>
                </div>
              </section>
            </div>

            <div className="gamecontent-block">
              {bodysponce.map((item: any, idx: any) => {
                const Component =
                  COMPONENT_MAP[item.__component as keyof typeof COMPONENT_MAP];
                return Component ? (
                  <Component key={`aticl-${idx}`} {...item} />
                ) : null;
              })}
            </div>

            <div className="mt-8 gametab">
              <GameTabs gamebody={gamebody} />
            </div>
          </article>

          {/* SIDEBAR */}
          <aside className="lg:col-span-3 ">
            <main className="sidebar-content lg:col-span-3 ">
              <div className="section-header">
                <h3 className="section-title">🔥 Related Game</h3>
              </div>

              <div className="flex flex-wrap justify-center mx-2 my-2 gap-8">
                {playgames?.map((game: any) => {
                  //console.log(" Game List :: ", game.gameicon.url);
                  //Wconst imageField = game?.gameicon;
                  //const imageUrl = getStrapiMedia(imageField?.url);

                  return (
                    <div
                      key={`games-${game.id}`}
                      className="w-1/3 flex justify-center bg-[#231108] rounded-2xl"
                    >
                      <GameSlots
                        key={`game-${game.id}`}
                        title={game.gamename}
                        seourl={game.seourl}
                        image={game.gameicon}
                      />
                    </div>
                  );
                })}
              </div>
            </main>

            <div
              className="flex flex-col mx-auto w-full max-w-4xl px-4 py-4 gap-3"
              style={{ marginTop: "20px" }}
            >
              {bodysponce.map((item: any, idx: any) => {
                const Component =
                  FAQ_MAP[item.__component as keyof typeof FAQ_MAP];
                return Component ? (
                  <Component key={`aticl-${idx}`} {...item} />
                ) : null;
              })}
            </div>
          </aside>
        </div>
      </main>
    </>
  );
}
