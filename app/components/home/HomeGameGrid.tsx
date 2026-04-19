import GameSlots from "../blocks/GameSlots";

interface Game {
  id?: string | number;
  gamename: string;
  seourl: string;
  gameicon: any;
}

export default function HomeGameGrid({
  title,
  games,
  compact = false,
}: {
  title: string;
  games: Game[];
  compact?: boolean;
}) {
  return (
    <section className="pin-section">
      <div className="pin-section__header">
        <h2 className="pin-section__title">🔥 {title}</h2>
      </div>

      <div className={compact ? "pin-grid pin-grid--compact" : "pin-grid"}>
        {games.map((game, idx) => (
          <div key={game.id ?? idx} className="pin-grid__item">
            <GameSlots
              id={game.id}
              title={game.gamename}
              seourl={game.seourl}
              image={game.gameicon}
            />
          </div>
        ))}
      </div>
    </section>
  );
}