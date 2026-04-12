"use client";

import Link from "next/link";
import { useRouter, useSearchParams } from "next/navigation";
import { useState, useEffect } from "react";
import GameSlots from "../components/blocks/GameSlots";
import qs from 'qs';

const ChevronRight = () => (
  <svg
    xmlns="http://www.w3.org/2000/svg"
    width="22"
    height="22"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    strokeWidth="2"
    strokeLinecap="round"
    strokeLinejoin="round"
  >
    <polyline points="9 18 15 12 9 6"></polyline>
  </svg>
);

const ChevronLeft = () => (
  <svg
    xmlns="http://www.w3.org/2000/svg"
    width="22"
    height="22"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    strokeWidth="2"
    strokeLinecap="round"
    strokeLinejoin="round"
  >
    <polyline points="15 18 9 12 15 6"></polyline>
  </svg>
);

interface Game {
  gamename: string;
  seourl: string;
  gameicon: string;
}

interface Pagination {
  page: number;
  pageSize: number;
  pageCount: number;
  total: number;
}

interface GamesClientProps {  
  gamebody: Game[];
  pagination?: Pagination;
  currentPage?: number;
  basePath?: string; // for dynamic routing
  gameid?: string;
}

const query = qs.stringify({
  fields: ['pagename', 'seourl', 'description'], 
  populate: {
    image: { populate: '*' },
    gamebody: { populate: '*' },
    gamefaq: { populate: '*' },
    playgames: { populate: '*' },  // Removed nested pagination
    sponsors: { populate: '*' },
  },
  status: 'published',
  locale: 'en', // single locale
}, { encodeValuesOnly: true });

export default function GamesClient({
  gamebody = [],
  pagination,
  currentPage = 1,
  basePath = "/games", // default link path
  gameid,
}: GamesClientProps) {
  if (!gamebody.length) return null;


  const router = useRouter();
  const searchParams = useSearchParams();
  const [games, setGames] = useState<Game[]>(gamebody);

  const currentpage = Number(searchParams.get("page")) || 1;
  const totalPages = pagination?.pageCount ?? 1;


const thisPage = Number(pagination?.page) || 1;
const pageSize = Number(pagination?.pageSize) || 10;
//const totalPages = pagination?.pageCount ?? 1;


  // fetch new games when page changes
  useEffect(() => {

    const fetchGames = async () => {

      const res = await fetch(`gamepages/${gameid}?${query}`,
        { cache: "no-store" }
      );

 

      const data = await res.json();

      setGames(data.games);

    };

    fetchGames();

  }, [currentPage]);



const startIndex = (thisPage - 1) * pageSize;
const endIndex = startIndex + pageSize;

const gamesToShow = gamebody.slice(startIndex, endIndex);

const paginationGames = { page : {thisPage}, pageCount : {pageSize} }

//console.log("Pagination", pagination);
//console.log("Slice Range:", startIndex, endIndex);
//console.log("gamebody",gamebody);
//console.log("pageCount",pagination);

const changePage = (page: number) => {
    router.push(`${basePath}?page=${page}`, { scroll: false });
  };

  return (
    <>
      <div className="games-section">

        <div className="section-header mb-4 px-5">
          <h3 className="section-title text-xl font-semibold">🎰 Related Games</h3>
        </div>

        <div className="flex flex-wrap justify-between mx-5 gap-y-6">
          {gamesToShow.map((game, idx) => (
            <div key={idx} className="w-[48%] mb-2.5">
              <div className="flex justify-center">
                <GameSlots
                  title={game.gamename}
                  seourl={game.seourl}
                  image={game.gameicon}
                  />
              </div>
            </div>
          ))}
        </div>
      </div>

      {pagination && (
        <div className="paginationgm-controls flex gap-2 mt-5 px-5 items-center justify-center">

          <button
            onClick={() => changePage(currentPage - 1)}
            disabled={currentPage <= 1}
            className={`btn paginationgm-Link ${thisPage <= 1 ? "disabled" : ""}`}
            style={{
              pointerEvents: thisPage <= 1 ? "none" : "auto",
              opacity: thisPage <= 1 ? 0.5 : 1,
            }}
          >
            <ChevronLeft /> Previous
          </button>

          <span className=" paginationgm-curent  px-2">
            Page {thisPage}
          </span>

          <button
            onClick={() => changePage(currentPage + 1)}
            disabled={currentPage >= totalPages}
            className="btn paginationgm-Link"
            style={{
              pointerEvents: currentPage >= totalPages ? "none" : "auto",
              opacity: currentPage >= totalPages ? 0.4 : 1,
            }}
          >
            Next <ChevronRight />
          </button>

        </div>
      )}

    </>
  );
}