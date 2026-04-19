"use client";

import { useEffect, useRef, useState } from "react";
import { strapiFetch, getStrapiMedia } from "@/services/strapi";
import qs from "qs";
import Link from "next/link";

const queryCat = qs.stringify(
  {
    populate: {
      logo: { populate: "*" },
    },
    sort: ["updatedAt:desc"],
    status: "published",
    locale: ["en"],
  },
  { encodeValuesOnly: true }
);

type ProviderItem = {
  id?: number;
  name?: string;
  seourl?: string;
  logo?: {
    url?: string | null;
    alternativeText?: string | null;
  } | null;
};

export default function Provider({ Classname = "" }: { Classname?: string }) {
  const [data, setData] = useState<ProviderItem[]>([]);
  const [error, setError] = useState(false);
  const sliderRef = useRef<HTMLDivElement | null>(null);

  useEffect(() => {
    async function fetchData() {
      try {
        const response = await strapiFetch(`sponsors?${queryCat}`);
        setData(response?.data || []);
      } catch (err) {
        console.error("Fetch error:", err);
        setError(true);
      }
    }

    fetchData();
  }, []);

  const scrollSlider = (direction: "left" | "right") => {
    if (!sliderRef.current) return;

    sliderRef.current.scrollBy({
      left: direction === "right" ? 220 : -220,
      behavior: "smooth",
    });
  };

  if (error) return null;
  if (!data) return null;
  if (data.length === 0) return null;

  return (
    <section className="providers-section">
      <div className="providers-topbar">
        <div className="providers-heading">
          <span className="providers-flame">🔥</span>
          <h2>PROVIDERS</h2>
        </div>

        <div className="providers-arrows">
          <button
            type="button"
            className="providers-arrow-btn"
            onClick={() => scrollSlider("left")}
            aria-label="Previous providers"
          >
            ‹
          </button>
          <button
            type="button"
            className="providers-arrow-btn"
            onClick={() => scrollSlider("right")}
            aria-label="Next providers"
          >
            ›
          </button>
        </div>
      </div>

      <div className="providers-slider" ref={sliderRef}>
        {data.map((provider, index) => {
          const imageUrl = getStrapiMedia(provider.logo?.url ?? null) || "";
          const providerName = provider.name || "Provider";
          const providerHref = provider.seourl ? `/sponsors/${provider.seourl}` : "/";
          const altText = provider.logo?.alternativeText || providerName;

          return (
            <div
              key={provider.id ?? index}
              className={`provider-logo-card ${index === 2 ? "active" : ""} ${Classname}`}
            >
              <Link href={providerHref} className="provider-logo-link">
                {imageUrl ? (
                  <img
                    src={imageUrl}
                    alt={altText}
                    className="provider-logo-img"
                    loading="lazy"
                  />
                ) : (
                  <span className="provider-logo-text">{providerName}</span>
                )}
              </Link>
            </div>
          );
        })}
      </div>
    </section>
  );
}