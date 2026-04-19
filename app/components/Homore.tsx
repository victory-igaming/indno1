"use client";

import { useMemo, useState } from "react";
import { BlocksRenderer } from "@strapi/blocks-react-renderer";

type FooterSeoContentProps = {
  hblockgame?: any[];
  title?: string;
};

export default function FooterSeoContent({
  hblockgame = [],
  title = "About INDNO1",
}: FooterSeoContentProps) {
  const [expanded, setExpanded] = useState(false);

  const safeContent = useMemo(() => {
    const firstWithDescription = hblockgame.find((item) => item?.description);
    return firstWithDescription?.description || getDefaultFooterSeoBlocks();
  }, [hblockgame]);

  return (
    <section
      className={`footer-seo ${expanded ? "is-open" : ""}`}
      aria-label="Footer SEO content"
    >
      <button
        type="button"
        className="footer-seo__toggle"
        onClick={() => setExpanded((prev) => !prev)}
        aria-expanded={expanded}
        aria-controls="footer-seo-panel"
      >
        <div className="footer-seo__toggleText">
          <span className="footer-seo__eyebrow">Info</span>
          <h2 className="footer-seo__title">{title}</h2>
          <p className="footer-seo__subtitle">
            Platform information, game categories, payments, and responsible use.
          </p>
        </div>

        <span className="footer-seo__icon" aria-hidden="true">
          <svg
            viewBox="0 0 24 24"
            width="20"
            height="20"
            fill="none"
            stroke="currentColor"
            strokeWidth="2.5"
            strokeLinecap="round"
            strokeLinejoin="round"
          >
            <path d="M6 9l6 6 6-6" />
          </svg>
        </span>
      </button>

      <div
        id="footer-seo-panel"
        className="footer-seo__panel"
        aria-hidden={!expanded}
      >
        <div className="footer-seo__scroll">
          <BlocksRenderer
            content={safeContent}
            blocks={{
              paragraph: ({ children }) => (
                <p className="footer-seo__p">{children}</p>
              ),

              heading: ({ children, level }) => {
                if (level === 1) {
                  return <h2 className="footer-seo__h1">{children}</h2>;
                }

                if (level === 2) {
                  return <h3 className="footer-seo__h2">{children}</h3>;
                }

                return <h4 className="footer-seo__h3">{children}</h4>;
              },

              list: ({ children, format }) => {
                if (format === "ordered") {
                  return <ol className="footer-seo__ol">{children}</ol>;
                }

                return <ul className="footer-seo__ul">{children}</ul>;
              },

              quote: ({ children }) => (
                <blockquote className="footer-seo__quote">{children}</blockquote>
              ),

              link: ({ children, url }) => (
                <a
                  href={url}
                  className="footer-seo__link"
                  target="_blank"
                  rel="noopener noreferrer"
                >
                  {children}
                </a>
              ),

              image: ({ image }) => (
                <div className="footer-seo__imageWrap">
                  <img
                    src={image.url}
                    alt={image.alternativeText || "Content image"}
                    className="footer-seo__image"
                  />
                </div>
              ),
            }}
            modifiers={{
              bold: ({ children }) => (
                <strong className="footer-seo__strong">{children}</strong>
              ),
              italic: ({ children }) => <em>{children}</em>,
              code: ({ children }) => (
                <code className="footer-seo__code">{children}</code>
              ),
            }}
          />
        </div>
      </div>
    </section>
  );
}

function getDefaultFooterSeoBlocks() {
  return [
    {
      type: "heading",
      level: 2,
      children: [{ type: "text", text: "Online Games and Sports on INDNO1" }],
    },
    {
      type: "paragraph",
      children: [
        {
          type: "text",
          text:
            "INDNO1 is built for users who enjoy online gaming, casino-style entertainment, sports categories, promotional rewards, and a mobile-friendly experience. Our platform focuses on fast navigation, category discovery, payment convenience, and a cleaner experience for users across India.",
        },
      ],
    },
    {
      type: "heading",
      level: 2,
      children: [{ type: "text", text: "Popular Categories" }],
    },
    {
      type: "list",
      format: "unordered",
      children: [
        {
          type: "list-item",
          children: [{ type: "text", text: "Slots, crash games, live-style categories, and fishing games" }],
        },
        {
          type: "list-item",
          children: [{ type: "text", text: "Sports and match-based sections with quick access navigation" }],
        },
        {
          type: "list-item",
          children: [{ type: "text", text: "Promotions including welcome offers, VIP-style rewards, and daily bonus sections" }],
        },
        {
          type: "list-item",
          children: [{ type: "text", text: "Mobile-first browsing with simple category access and fast page transitions" }],
        },
      ],
    },
    {
      type: "heading",
      level: 2,
      children: [{ type: "text", text: "Payments and Convenience" }],
    },
    {
      type: "paragraph",
      children: [
        {
          type: "text",
          text:
            "INDNO1 is designed around payment convenience for Indian users. Depending on availability and account status, users may see popular digital payment options such as UPI and other commonly used methods. Payment method visibility, processing speed, and limits may vary by account and region.",
        },
      ],
    },
    {
      type: "heading",
      level: 2,
      children: [{ type: "text", text: "Responsible Use" }],
    },
    {
      type: "paragraph",
      children: [
        {
          type: "text",
          text:
            "This platform is intended for adults only. Users should always review the terms, payment rules, responsible gaming tools, and local legal requirements before participating. Play responsibly and use platform controls where needed.",
        },
      ],
    },
  ];
}