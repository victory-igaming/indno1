"use client";

import Link from "next/link";
import Image from "next/image";

const heroCards = {
  main: {
    eyebrow: "Product",
    title: "SIGN UP AND RECEIVE $300 AND 30 FS",
    cta: "Play now",
    href: "/register",
    image: "/images/hot/main-banner-character.png",
    alt: "Promo character banner",
  },
  top: {
    eyebrow: "Product",
    title: "SIGN UP AND WIN BIG",
    cta: "Play now",
    href: "/playnow",
    image: "/images/hot/rocket-banner.png",
    alt: "Rocket game promo",
  },
  bottom: {
    eyebrow: "Product",
    title: "PLAY NOW",
    cta: "Play now",
    href: "/hot",
    image: "/images/hot/parrot-banner.png",
    alt: "Parrot game promo",
  },
};

export default function HotGamesHero() {
  return (
    <section className="hot-hero" aria-label="Hot games hero section">
      <div className="hot-hero__grid">
        <article className="hot-hero__card hot-hero__card--main">
          <Link href={heroCards.main.href} className="hot-hero__link">
            <div className="hot-hero__media hot-hero__media--green">
              <div className="hot-hero__bgPattern hot-hero__bgPattern--left" />

              <div className="hot-hero__content hot-hero__content--main">
                {/* <span className="hot-hero__eyebrow">{heroCards.main.eyebrow}</span> */}

                <h1 className="hot-hero__title hot-hero__title--main">
                  SIGN UP AND RECEIVE <span>$300</span> AND <span>30 FS</span>
                </h1>

                <div className="hot-hero__dots" aria-hidden="true">
                  <span />
                  <span />
                  <span />
                  <span />
                </div>

                <div className="hot-hero__actions">
                  <span className="hot-hero__button">{heroCards.main.cta}</span>
                  <span className="hot-hero__playIcon">▶</span>
                </div>
              </div>

              <div className="hot-hero__imageWrap hot-hero__imageWrap--main">
                <Image
                  src={heroCards.main.image}
                  alt={heroCards.main.alt}
                  fill
                  priority
                  unoptimized
                  className="hot-hero__image hot-hero__image--main"
                />
              </div>
            </div>
          </Link>
        </article>

        <div className="hot-hero__stack">
          <article className="hot-hero__card hot-hero__card--small">
            <Link href={heroCards.top.href} className="hot-hero__link">
              <div className="hot-hero__media hot-hero__media--purple">
                <div className="hot-hero__content hot-hero__content--small">
                  {/* <span className="hot-hero__eyebrow">{heroCards.top.eyebrow}</span> */}

                  <h2 className="hot-hero__title hot-hero__title--small">
                    SIGN UP <span>AND</span>
                  </h2>

                  <span className="hot-hero__miniLine" />
                  <span className="hot-hero__button hot-hero__button--small">
                    {heroCards.top.cta}
                  </span>
                </div>

                <div className="hot-hero__imageWrap hot-hero__imageWrap--small">
                  <Image
                    src={heroCards.top.image}
                    alt={heroCards.top.alt}
                    fill
                    unoptimized
                    className="hot-hero__image hot-hero__image--rocket"
                  />
                </div>
              </div>
            </Link>
          </article>

          <article className="hot-hero__card hot-hero__card--small">
            <Link href={heroCards.bottom.href} className="hot-hero__link">
              <div className="hot-hero__media hot-hero__media--lime">
                <div className="hot-hero__content hot-hero__content--small">
                  {/* <span className="hot-hero__eyebrow">{heroCards.bottom.eyebrow}</span> */}

                  <h2 className="hot-hero__title hot-hero__title--small">
                    PLAY <span>NOW</span>
                  </h2>

                  <span className="hot-hero__miniLine" />
                  <span className="hot-hero__button hot-hero__button--small">
                    {heroCards.bottom.cta}
                  </span>
                </div>

                <div className="hot-hero__imageWrap hot-hero__imageWrap--small">
                  <Image
                    src={heroCards.bottom.image}
                    alt={heroCards.bottom.alt}
                    fill
                    unoptimized
                    className="hot-hero__image hot-hero__image--parrot"
                  />
                </div>
              </div>
            </Link>
          </article>
        </div>
      </div>
    </section>
  );
}