import { useEffect, useMemo, useRef, useState } from "react";
import { strapiFetch, getStrapiMedia } from "@/services/strapi";
import Link from "next/link";
import qs from "qs";

const queryCat = qs.stringify(
  {
    pagination: {
      limit: 30,
    },
    populate: {
      gameicon: { populate: "*" },
    },
    filters: {
      gamecategoties: {
        seourl: {
          $eq: "live",
        },
      },
    },
    sort: ["updatedAt:desc"],
    status: "published",
    locale: ["en"],
  },
  { encodeValuesOnly: true }
);

export default function LiveCasino() {
  const [data, setData] = useState<any[] | null>(null);
  const [error, setError] = useState(false);
  const sliderRef = useRef<HTMLDivElement | null>(null);

  useEffect(() => {
    async function fetchData() {
      try {
        const response = await strapiFetch(`playgames?${queryCat}`);

        if (response?.data) {
          setData(response.data);
        } else {
          setData([]);
        }
      } catch (err: any) {
        console.error("Fetch error:", err);
        setError(true);
      }
    }

    fetchData();
  }, []);

  const liveCasinoList = useMemo(() => {
    if (!data) return [];
    return [...data];
  }, [data]);

  const scrollSlider = (direction: "left" | "right") => {
    if (!sliderRef.current) return;

    const container = sliderRef.current;
    const card = container.querySelector(".tg-card") as HTMLElement | null;
    const gap = 14;

    if (card) {
      const scrollAmount = card.offsetWidth * 2 + gap * 2;
      container.scrollBy({
        left: direction === "left" ? -scrollAmount : scrollAmount,
        behavior: "smooth",
      });
    }
  };

  if (error) return null;
  if (!data) return <div className="tg-loading">Loading...</div>;
  if (liveCasinoList.length === 0) return null;

  return (
    <section className="tg-section">
      <div className="tg-header">
        <div className="tg-title-wrap">
          <span className="tg-trophy">♠️</span>
          <h3 className="tg-title">LIVE CASINO</h3>
        </div>

        <div className="tg-nav">
          <button
            type="button"
            className="tg-nav-btn"
            aria-label="Scroll left"
            onClick={() => scrollSlider("left")}
          >
            ‹
          </button>
          <button
            type="button"
            className="tg-nav-btn"
            aria-label="Scroll right"
            onClick={() => scrollSlider("right")}
          >
            ›
          </button>
        </div>
      </div>

      <div className="tg-slider" ref={sliderRef}>
        {liveCasinoList.map((lcasino: any) => {
          const imageUrl = getStrapiMedia(lcasino.gameicon?.url);

          return (
            <div key={lcasino.id} className="tg-card">
              <Link className="tg-card-link" href={`/playgame/${lcasino.seourl}`}>
                {imageUrl ? (
                  <img
                    src={imageUrl}
                    alt={lcasino.gamename || lcasino.title}
                    className="tg-card-image"
                    loading="lazy"
                  />
                ) : null}

                {/* <div className="tg-card-footer">
                  <span className="tg-coin">🟡</span>
                  <span className="tg-amount">₹ 0.00</span>
                </div> */}
              </Link>
            </div>
          );
        })}
      </div>
    </section>
  );
}