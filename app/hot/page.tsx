import { strapiFetch } from "../services/strapi";
import qs from "qs";
import HotGamesHero from "./hot_games_header_ui";
import HomeGameToolbar from "../components/home/HomeGameToolbar";
import HomeGameGrid from "../components/home/HomeGameGrid";
import HomePromoBanner from "../components/home/HomePromoBanner";
import HomeHighlights from "../components/home/HomeHighlights";
import HomeBottomPromos from "../components/home/HomeBottomPromos";

const gameId = `ltu5pmvk3ks0ztofpmsj74ih`;

export default async function GameCate() {
  const query = qs.stringify(
    {
      fields: ["pagename", "seourl", "description"],
      populate: {
        image: { populate: "*" },
        gamebody: { populate: "*" },
        gamefaq: { populate: "*" },
        playgames: { populate: "*" },
        sponsors: { populate: "*" },
      },
      status: "published",
      locale: "en",
    },
    { encodeValuesOnly: true }
  );

  const response = await strapiFetch(`gamepages/${gameId}?${query}`);

  if (!response || !response.data) {
    return <div>Loading or Error...</div>;
  }

  const { playgames = [] } = response.data;

  return (
    <main className="pin-homepage">
      <div className="pin-homepage__inner">
        <HotGamesHero />

        <HomeGameToolbar />

        <HomeGameGrid
          title="Original Game"
          games={playgames.slice(0, 6)}
          compact
        />

        <HomeGameGrid
          title="Slot Game"
          games={playgames.slice(0, 10)}
        />

        <HomePromoBanner />

        <HomeHighlights />

        <HomeBottomPromos />
      </div>
    </main>
  );
}