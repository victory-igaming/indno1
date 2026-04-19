"use client";

import { useMemo, useState } from "react";
import { getStrapiMedia } from "@/services/strapi";
import { BlocksRenderer } from "@strapi/blocks-react-renderer";
import { motion, AnimatePresence } from "framer-motion";

interface GameBody {
  id: number;
  title: string;
  tabname: string;
  description: any;
  gameview?: any;
  gameicon?: any;
}

export default function GameTabs({ gamebody = [] }: { gamebody: GameBody[] }) {
  const [activeTab, setActiveTab] = useState(0);
  const active = gamebody?.[activeTab];

  const imageUrl = useMemo(() => {
    if (!active) return null;

    const gameViewUrl =
      active?.gameview?.url ||
      active?.gameview?.data?.attributes?.url ||
      active?.gameview?.data?.url;

    const gameIconUrl =
      active?.gameicon?.url ||
      active?.gameicon?.data?.attributes?.url ||
      active?.gameicon?.data?.url;

    const finalUrl = gameViewUrl || gameIconUrl;
    return finalUrl ? getStrapiMedia(finalUrl) : null;
  }, [active]);

  const renderInlineChildren = (children: any[] = []) => {
    return children.map((child, index) => {
      let node: React.ReactNode = child?.text || "";

      if (child?.bold) {
        node = <strong key={index}>{node}</strong>;
      } else {
        node = <span key={index}>{node}</span>;
      }

      if (child?.underline) {
        node = <u key={index}>{node}</u>;
      }

      return <span key={index}>{node}</span>;
    });
  };

  const renderRichText = (content: any) => {
    if (!Array.isArray(content)) return null;

    return content.map((block: any, index: number) => {
      if (block?.type === "paragraph") {
        return (
          <p key={index} className="mb-3 text-sm leading-7 text-black">
            {renderInlineChildren(block.children)}
          </p>
        );
      }

      if (block?.type === "list") {
        return (
          <ul
            key={index}
            className="mb-3 list-disc pl-5 text-sm leading-7 text-black"
          >
            {block.children?.map((item: any, itemIndex: number) => (
              <li key={itemIndex}>
                {renderInlineChildren(item.children)}
              </li>
            ))}
          </ul>
        );
      }

      return null;
    });
  };

  const renderDescription = () => {
    if (!active?.description) return null;

    if (typeof active.description === "string") {
      return (
        <div
          className="text-sm leading-7 text-black"
          dangerouslySetInnerHTML={{ __html: active.description }}
        />
      );
    }

    return <div>{renderRichText(active.description)}</div>;
  };

  if (!gamebody?.length) return null;

  return (
    <section className="relative w-full overflow-hidden rounded-2xl border  border-yellow-700/40 bg-gradient-to-br from-[#481703] via-[#2a0f05] to-[#481703] shadow-[0_0_40px_rgba(255,170,0,0.08)]">
      <div className="rounded-[28px] border p-4 shadow-lg md:p-5 gametab-main">
        <div className="grid grid-cols-1 gap-4 md:grid-cols-2">
          {/* LEFT */}
          <div className="flex flex-col gap-8 gametab-main-left">
            {gamebody.map((tab, index) => {
              const isActive = activeTab === index;
              const stepNo = String(index + 1).padStart(2, "0");

              return (
                <button
                  key={tab.id}
                  type="button"
                  onClick={() => setActiveTab(index)}
                  className={`flex w-full items-center gap-6 border px-4 py-3 space-x-2 text-left transition-all duration-200 md:px-5 ${
                    isActive
                      ?"bg-[#6b2509] text-yellow-400 shadow-md"
                      : "gametab-button:active"
                  } rounded-xl gametab-button`}
                >
                  {/* Active indicator */}
                  <span
                    className={`h-2.5 w-2.5 rounded-full transition-all duration-300 ${
                      isActive
                        ? "bg-yellow-400 shadow-[0_0_12px_rgba(255,220,0,0.9)]"
                        : "bg-white/30 group-hover:bg-yellow-300/70"
                    }`}
                  />

                  <div className="flex-1">
                    <div className="font-semibold capitalize tracking-wide">
                      {tab.tabname}
                    </div>
                  </div>

                  <span
                    className={`text-sm transition-transform duration-300 ${
                      isActive
                        ? "translate-x-0 text-yellow-300"
                        : "text-white/40 group-hover:translate-x-1 group-hover:text-yellow-300"
                    }`}
                  >
                    →
                  </span>
                </button>
              );
            })}
          </div>

          {/* RIGHT */}
           <AnimatePresence  key={`anm_{active?.id}`} mode="wait" >
          <div className="flex flex-col  gametab-rgtcontent">
           
            <h2 className="mb-4 text-3xl font-extrabold capitalize text-yellow-300 md:text-5xl">
              {active?.title || "Select Game"}
            </h2>

            <div className="w-full rounded-[20px] border border-black bg-[#3b1200] p-3 md:p-4">
              <div className="mb-4 overflow-hidden rounded-[14px] border border-black bg-[#3b1200]">
                {imageUrl ? (
                  <img
                    src={imageUrl}
                    alt={active?.title || "Game preview"}
                    className="h-auto max-h-[320px] w-full object-contain"
                  />
                ) : (
                  <div className="flex h-48 items-center justify-center text-sm text-black">
                    No preview image available
                  </div>
                )}
              </div>

              <div className="rounded-[14px] border border-black bg-[#3b1200] p-4 rgt-box ">
                <BlocksRenderer
                key={active.id}
                content={active.description}
                blocks={{
                  paragraph: ({ children }) => (
                    <p className="text-gray-300 mb-4 leading-relaxed gametab-rgtcontent-p">{children}</p>
                  ),

                  heading: ({ children, level }) => {
                    switch (level) {
                      case 1:
                        return <h1 className="text-2xl font-extrabold text-white mb-4"> {children}</h1>;
                      case 2:
                        return <h2 className="text-xl font-bold text-white border-l-4 border-red-600 pl-3 my-4"> {children}</h2>;
                      case 3:
                        return <h3 className="text-lg font-bold text-white mt-3 mb-2"> {children}</h3>;
                      case 5:
                        return <h5 className="text-lg font-bold text-white mt-3 mb-2"> {children}</h5>;
                      case 6:
                        return <h6 className="text-lg font-bold text-white mt-3 mb-2"> {children}</h6>;
                      default:
                        return <h4 className="text-md font-bold text-white mt-2"> {children}</h4>;
                    }
                  },

                  list: ({ children, format }) => {

                    if (format === "ordered") {
                      return <ol className="list-decimal pl-10 pr-6 py-2 mb-4 space-y-3 text-gray-200 gametab-rgtcontent-li" >{children}</ol>;
                    }

                    return <ul className="list-disc pl-12 pr-8 py-2 mb-6 space-y-8 space-x-2 text-gray-200  gametab-rgtcontent-li" >{children}</ul>;
                  },

                  link: ({ children, url }) => (
                    <a
                      href={url}
                      target="_blank"
                      rel="noopener noreferrer"
                      className="text-red-500 hover:text-red-400 underline transition-colors"
                    >
                      {children}
                    </a>
                  ),

                  quote: ({ children }) => (
                    <blockquote className="border-l-4 border-gray-500 italic pl-4 my-4 text-gray-400">
                      {children}
                    </blockquote>
                  ),

                  image: ({ image }) => (
                    <div className="my-6">
                      <img
                        src={image.url}
                        alt={image.alternativeText || "Content Image"}
                        className="rounded-lg max-w-full h-auto border border-zinc-700"
                      />
                    </div>
                  ),
                }}

                modifiers={{
                  bold: ({ children }) => (
                    <strong className="font-bold text-white">{children}</strong>
                  ),
                  italic: ({ children }) => <em className="italic">{children}</em>,
                  code: ({ children }) => (
                    <code className="bg-zinc-800 text-red-400 px-1 py-0.5 rounded font-mono text-sm">
                      {children}
                    </code>
                  ),
                }}
              />
              </div>              
            </div>
            
          </div>
          </AnimatePresence>
        </div>
      </div>
    </section>
  );
}