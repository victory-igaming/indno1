export default function HomePromoBanner() {
  return (
    <section className="pin-mid-banner">
      <div className="pin-mid-banner__content">
        <span className="pin-mid-banner__eyebrow">Product</span>
        <h2 className="pin-mid-banner__title">
          SIGN UP AND RECEIVE <span>$300</span> AND <span>30 FS</span>
        </h2>
        <button className="pin-mid-banner__button">Play now</button>
      </div>

      <div className="pin-mid-banner__visual">
        <div className="pin-mid-banner__orb pin-mid-banner__orb--one" />
        <div className="pin-mid-banner__orb pin-mid-banner__orb--two" />
      </div>
    </section>
  );
}