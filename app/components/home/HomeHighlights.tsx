const rows = [
  { player: "WildPapa442", bet: "0.00001100", payout: "0.00000320", multi: "x0.00000500", game: "🐦" },
  { player: "RedDragon09", bet: "0.00000900", payout: "0.00000550", multi: "x0.00001300", game: "🎰" },
  { player: "FlyLily55", bet: "0.00002000", payout: "0.00000400", multi: "x0.00000760", game: "👸" },
  { player: "SioPlay", bet: "0.00000995", payout: "0.00000670", multi: "x0.00002300", game: "🧝" },
  { player: "NewSilly7", bet: "0.00001239", payout: "0.00000090", multi: "x0.00000990", game: "🍭" },
];

export default function HomeHighlights() {
  return (
    <section className="pin-highlights">
      <div className="pin-highlights__header">
        <h2 className="pin-highlights__title">🏆 Highlights</h2>

        <div className="pin-highlights__filters">
          <button className="pin-pill is-active">Recent</button>
          <button className="pin-pill">Lucky Wins</button>
          <button className="pin-pill">High Rollers</button>
        </div>
      </div>

      <div className="pin-table">
        <div className="pin-table__head">
          <span>Player</span>
          <span>Bet</span>
          <span>Payout</span>
          <span>Multiplier</span>
          <span>Game</span>
        </div>

        {rows.map((row, idx) => (
          <div key={idx} className="pin-table__row">
            <span>{row.player}</span>
            <span>{row.bet}</span>
            <span>{row.payout}</span>
            <span>{row.multi}</span>
            <span>{row.game}</span>
          </div>
        ))}
      </div>
    </section>
  );
}