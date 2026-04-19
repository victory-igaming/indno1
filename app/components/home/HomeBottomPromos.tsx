export default function HomeBottomPromos() {
  return (
    <section className="pin-bottom-grid">
      <article className="pin-bottom-card pin-bottom-card--green">
        <span className="pin-bottom-card__eyebrow">Product</span>
        <h3 className="pin-bottom-card__title">FREE COINS EVERY 24 HOURS!</h3>
        <div className="pin-timer">
          <span>02</span>
          <span>10</span>
          <span>21</span>
          <span>07</span>
        </div>
        <button className="pin-bottom-card__button">Claim</button>
      </article>

      <div className="pin-bottom-stack">
        <article className="pin-bottom-card pin-bottom-card--blue">
          <span className="pin-bottom-card__eyebrow">Product</span>
          <h3 className="pin-bottom-card__title">VIP CLUB</h3>
        </article>

        <article className="pin-bottom-card pin-bottom-card--purple">
          <span className="pin-bottom-card__eyebrow">Product</span>
          <h3 className="pin-bottom-card__title">WELCOME BONUS $5000 AND 100FS</h3>
        </article>
      </div>
    </section>
  );
}