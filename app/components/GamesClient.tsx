"use client";

import { useEffect, useMemo, useState } from "react";
import GameSlots from "../components/blocks/GameSlots";

type CategoryItem =
  | string
  | {
      id?: number | string;
      name?: string;
      title?: string;
      category?: string;
      slug?: string;
    };

type Game = {
  gamename: string;
  seourl: string;
  gameicon: string;

  // possible category shapes
  categories?: CategoryItem[];
  category?: CategoryItem[] | CategoryItem;
  gamecategories?: CategoryItem[];
  gamecategory?: CategoryItem[] | CategoryItem;
};

interface GamesClientProps {
  gamebody?: Game[];
}

type NormalizedCategory = {
  key: string;
  label: string;
};

function normalizeText(value: unknown) {
  return String(value || "")
    .trim()
    .toLowerCase();
}

function toCategoryLabel(item: CategoryItem): string {
  if (typeof item === "string") return item.trim();
  return String(
    item?.name || item?.title || item?.category || item?.slug || ""
  ).trim();
}

function extractRawCategories(game: Game): CategoryItem[] {
  const candidates = [
    ...(Array.isArray(game.categories) ? game.categories : []),
    ...(Array.isArray(game.gamecategories) ? game.gamecategories : []),
    ...(Array.isArray(game.category) ? game.category : game.category ? [game.category] : []),
    ...(Array.isArray(game.gamecategory) ? game.gamecategory : game.gamecategory ? [game.gamecategory] : []),
  ];

  return candidates.filter(Boolean);
}

function extractNormalizedCategories(game: Game): NormalizedCategory[] {
  const seen = new Map<string, NormalizedCategory>();

  extractRawCategories(game).forEach((item) => {
    const label = toCategoryLabel(item);
    const key = normalizeText(label);

    if (!label || !key) return;
    if (!seen.has(key)) {
      seen.set(key, { key, label });
    }
  });

  return Array.from(seen.values());
}

export default function GamesClient({ gamebody = [] }: GamesClientProps) {
  const allCategoryTabs = useMemo(() => {
    const map = new Map<string, NormalizedCategory>();

    gamebody.forEach((game) => {
      extractNormalizedCategories(game).forEach((category) => {
        if (!map.has(category.key)) {
          map.set(category.key, category);
        }
      });
    });

    return Array.from(map.values());
  }, [gamebody]);

  const [activeCategory, setActiveCategory] = useState<string>("");

  useEffect(() => {
    if (!activeCategory && allCategoryTabs.length) {
      setActiveCategory(allCategoryTabs[0].key);
    }
  }, [allCategoryTabs, activeCategory]);

  const visibleGames = useMemo(() => {
    if (!activeCategory) return [];

    return gamebody.filter((game) =>
      extractNormalizedCategories(game).some(
        (category) => category.key === activeCategory
      )
    );
  }, [gamebody, activeCategory]);

  const activeCategoryLabel =
    allCategoryTabs.find((item) => item.key === activeCategory)?.label ||
    "All";

  if (!gamebody.length) return null;

  return (
    <section className="hot-category-games">
      <div className="hot-category-games__top">
        <div className="hot-category-games__header">
          <h3 className="hot-category-games__title">Original Game</h3>
        </div>

        <div className="hot-category-games__categories">
          {allCategoryTabs.map((category) => (
            <button
              key={category.key}
              type="button"
              className={`hot-category-games__category ${
                activeCategory === category.key ? "is-active" : ""
              }`}
              onClick={() => setActiveCategory(category.key)}
            >
              <span className="hot-category-games__categoryLabel">
                {category.label}
              </span>
            </button>
          ))}
        </div>
      </div>

      <div className="hot-category-games__bottom">
        <div className="hot-category-games__header">
          <h3 className="hot-category-games__title">
            {activeCategoryLabel} Games
          </h3>
        </div>

        <div className="hot-category-games__grid">
          {visibleGames.map((game, idx) => (
            <div key={`${game.seourl}-${idx}`} className="hot-category-games__item">
              <GameSlots
                title={game.gamename}
                seourl={game.seourl}
                image={game.gameicon}
              />
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}