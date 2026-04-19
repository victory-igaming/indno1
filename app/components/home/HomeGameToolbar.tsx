"use client";

const topTabs = ["Casino", "Sport", "Favorites"];
const categories = [
  "Crash",
  "Roulette",
  "Slot",
  "Mines",
  "Battles",
  "Plinko",
];

export default function HomeGameToolbar() {
  return (
    <section className="pin-toolbar">
      <div className="pin-toolbar__top">
        <div className="pin-toolbar__tabs">
          {topTabs.map((tab, index) => (
            <button
              key={tab}
              className={`pin-pill ${index === 0 ? "is-active" : ""}`}
            >
              {tab}
            </button>
          ))}
        </div>
      </div>

      <div className="pin-toolbar__categories">
        {categories.map((item) => (
          <button key={item} className="pin-category">
            <span className="pin-category__icon" />
            <span>{item}</span>
          </button>
        ))}
      </div>
    </section>
  );
}