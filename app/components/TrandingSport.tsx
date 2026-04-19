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
          $eq: "trending-sport",
        },
      },
    },
    sort: ["updatedAt:desc"],
    status: "published",
    locale: ["en"],
  },
  { encodeValuesOnly: true }
);

export default function TrendingSport() {
  const [data, setData] = useState<any[] | null>(null);
  const [error, setError] = useState(false);
  const sliderRef = useRef<HTMLDivElement | null>(null);

  useEffect(() => {
    async function fetchData() {
      try {
        const response = await strapiFetch(`playgames?${queryCat}`);
        setData(response?.data || []);
      } catch (err: any) {
        console.error("Fetch error:", err);
        setError(true);
      }
    }

    fetchData();
  }, []);

  const gameList = useMemo(() => {
    if (!data) return [];
    return [...data]; // no mutation
  }, [data]);

  const scrollSlider = (dir: "left" | "right") => {
    if (!sliderRef.current) return;

    const container = sliderRef.current;
    const card = container.querySelector(".tg-card") as HTMLElement | null;

    if (card) {
      const scrollAmount = card.offsetWidth * 2;
      container.scrollBy({
        left: dir === "left" ? -scrollAmount : scrollAmount,
        behavior: "smooth",
      });
    }
  };

  if (error) return null;
  if (!data) return <div className="tg-loading">Loading...</div>;
  if (gameList.length === 0) return null;

  return (
    <section className="tg-section">
      <div className="tg-header">
        <div className="tg-title-wrap">
          <span className="tg-trophy">🎮</span>
          <h3 className="tg-title">TRENDING SPORT</h3>
        </div>

        <div className="tg-nav">
          <button
            className="tg-nav-btn"
            onClick={() => scrollSlider("left")}
          >
            ‹
          </button>
          <button
            className="tg-nav-btn"
            onClick={() => scrollSlider("right")}
          >
            ›
          </button>
        </div>
      </div>

      <div className="tg-slider" ref={sliderRef}>
        {gameList.map((game: any) => {
          const imageUrl = getStrapiMedia(game.gameicon?.url);

          return (
            <div key={game.id} className="tg-card">
              <Link href={`/playgame/${game.seourl}`} className="tg-card-link">
                {imageUrl && (
                  <img
                    src={imageUrl}
                    alt={game.gamename || game.title}
                    className="tg-card-image"
                    loading="lazy"
                  />
                )}

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