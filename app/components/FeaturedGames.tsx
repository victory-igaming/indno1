"use client";

import { useEffect, useMemo, useState } from "react";
import NextImage from "next/image";
import Link from "next/link";
import { getStrapiMedia } from "@/services/strapi";

type FeaturedGameItem = {
  title?: string;
  description?: string;
  badge?: string;
  linkurl?: string;
  buttonText?: string;
  image?: {
    url?: string | null;
    alternativeText?: string | null;
  } | null;
  mobileImage?: {
    url?: string | null;
    alternativeText?: string | null;
  } | null;
};

type CountdownParts = {
  days: string;
  hours: string;
  minutes: string;
  seconds: string;
};

function getIndiaTimeRemainingToNextMidnight(): number {
  const now = new Date();

  const indiaNow = new Date(
    now.toLocaleString("en-US", { timeZone: "Asia/Kolkata" })
  );

  const nextMidnight = new Date(indiaNow);
  nextMidnight.setHours(24, 0, 0, 0);

  return nextMidnight.getTime() - indiaNow.getTime();
}

function formatCountdown(ms: number): CountdownParts {
  const totalSeconds = Math.max(0, Math.floor(ms / 1000));

  const days = Math.floor(totalSeconds / 86400);
  const hours = Math.floor((totalSeconds % 86400) / 3600);
  const minutes = Math.floor((totalSeconds % 3600) / 60);
  const seconds = totalSeconds % 60;

  return {
    days: String(days).padStart(2, "0"),
    hours: String(hours).padStart(2, "0"),
    minutes: String(minutes).padStart(2, "0"),
    seconds: String(seconds).padStart(2, "0"),
  };
}

export default function FeaturedGames({
  ftrgame = [],
}: {
  ftrgame: FeaturedGameItem[];
}) {
  const [timeLeft, setTimeLeft] = useState<CountdownParts>({
    days: "00",
    hours: "00",
    minutes: "00",
    seconds: "00",
  });

  useEffect(() => {
    const updateCountdown = () => {
      const remaining = getIndiaTimeRemainingToNextMidnight();
      setTimeLeft(formatCountdown(remaining));
    };

    updateCountdown();
    const interval = setInterval(updateCountdown, 1000);

    return () => clearInterval(interval);
  }, []);

  const cards = useMemo(() => {
    const safeCards = Array.isArray(ftrgame) ? ftrgame : [];

    return [
      {
        // badge: "Product",
        title: "Free Daily Deposit Bonus",
        description:
          "Claim your daily reward before the India reset timer ends and keep your streak going.",
        buttonText: "Claim",
        linkurl: safeCards[0]?.linkurl || "/promotions/daily-bonus",
        desktopImage:
          getStrapiMedia(safeCards[0]?.image?.url ?? null) ||
          "/images/bnar_1.png",
        mobileImage:
          getStrapiMedia(safeCards[0]?.mobileImage?.url ?? null) ||
          getStrapiMedia(safeCards[0]?.image?.url ?? null) ||
          "/images/bnar_1.png",
        alt:
          safeCards[0]?.image?.alternativeText ||
          safeCards[0]?.mobileImage?.alternativeText ||
          "Free daily deposit bonus banner",
        variant: "main",
      },
      {
        // badge: "Product",
        title: "VIP Club",
        description:
          "Supports popular Indian payment options including UPI, Paytm, Google Pay, PhonePe and more.",
        buttonText: "",
        linkurl: safeCards[1]?.linkurl || "/support/payment-methods",
        desktopImage:
          getStrapiMedia(safeCards[1]?.image?.url ?? null) ||
          "/images/bnar_2.png",
        mobileImage:
          getStrapiMedia(safeCards[1]?.mobileImage?.url ?? null) ||
          getStrapiMedia(safeCards[1]?.image?.url ?? null) ||
          "/images/bnar_2.png",
        alt:
          safeCards[1]?.image?.alternativeText ||
          safeCards[1]?.mobileImage?.alternativeText ||
          "VIP club banner",
        variant: "side",
      },
      {
        // badge: "Product",
        title: "100% Welcome Bonus",
        description:
          "Get a 100% welcome bonus on your first sign-up and start your journey with extra value.",
        buttonText: "",
        linkurl: safeCards[2]?.linkurl || "/promotions/welcome-bonus",
        desktopImage:
          getStrapiMedia(safeCards[2]?.image?.url ?? null) ||
          "/images/bnar_3.png",
        mobileImage:
          getStrapiMedia(safeCards[2]?.mobileImage?.url ?? null) ||
          getStrapiMedia(safeCards[2]?.image?.url ?? null) ||
          "/images/bnar_3.png",
        alt:
          safeCards[2]?.image?.alternativeText ||
          safeCards[2]?.mobileImage?.alternativeText ||
          "100 percent welcome bonus banner",
        variant: "side",
      },
    ];
  }, [ftrgame]);

  const mainCard = cards[0];
  const sideCards = cards.slice(1);

  return (
    <section className="promo-showcase-section" aria-label="Featured promotions">
      <div className="promo-showcase-grid">
        <article className="promo-card promo-card--main">
          <Link href={mainCard.linkurl} className="promo-card__link">
            <div className="promo-card__media">
              <div className="promo-card__image-wrap promo-card__image-wrap--desktop">
                <NextImage
                  src={mainCard.desktopImage}
                  alt={mainCard.alt}
                  fill
                  className="promo-card__image"
                  unoptimized
                  loading="lazy"
                />
              </div>

              <div className="promo-card__image-wrap promo-card__image-wrap--mobile">
                <NextImage
                  src={mainCard.mobileImage}
                  alt={mainCard.alt}
                  fill
                  className="promo-card__image"
                  unoptimized
                  loading="lazy"
                />
              </div>

              <div className="promo-card__content promo-card__content--main">
                {/* <span className="promo-card__eyebrow">{mainCard.badge}</span> */}

                <h2 className="promo-card__title promo-card__title--main">
                  {mainCard.title}
                </h2>

                <p className="promo-card__description promo-card__description--main">
                  {mainCard.description}
                </p>

                <div className="promo-countdown" aria-label="Daily bonus countdown in India time">
                  <div className="promo-countdown__item">
                    <span className="promo-countdown__number">{timeLeft.days}</span>
                    <span className="promo-countdown__label">Days</span>
                  </div>
                  <div className="promo-countdown__item">
                    <span className="promo-countdown__number">{timeLeft.hours}</span>
                    <span className="promo-countdown__label">Hours</span>
                  </div>
                  <div className="promo-countdown__item">
                    <span className="promo-countdown__number">{timeLeft.minutes}</span>
                    <span className="promo-countdown__label">Min</span>
                  </div>
                  <div className="promo-countdown__item">
                    <span className="promo-countdown__number">{timeLeft.seconds}</span>
                    <span className="promo-countdown__label">Sec</span>
                  </div>
                </div>

                <span className="promo-card__button">{mainCard.buttonText}</span>
              </div>
            </div>
          </Link>
        </article>

        <div className="promo-showcase-side">
          {sideCards.map((card, index) => (
            <article key={index} className="promo-card promo-card--side">
              <Link href={card.linkurl} className="promo-card__link">
                <div className="promo-card__media">
                  <div className="promo-card__image-wrap promo-card__image-wrap--desktop">
                    <NextImage
                      src={card.desktopImage}
                      alt={card.alt}
                      fill
                      className="promo-card__image"
                      unoptimized
                      loading="lazy"
                    />
                  </div>

                  <div className="promo-card__image-wrap promo-card__image-wrap--mobile">
                    <NextImage
                      src={card.mobileImage}
                      alt={card.alt}
                      fill
                      className="promo-card__image"
                      unoptimized
                      loading="lazy"
                    />
                  </div>

                  <div className="promo-card__content promo-card__content--side">
                    {/* <span className="promo-card__eyebrow">{card.badge}</span> */}

                    <h3 className="promo-card__title promo-card__title--side">
                      {card.title}
                    </h3>

                    <p className="promo-card__description promo-card__description--side">
                      {card.description}
                    </p>

                    <span className="promo-card__mini-line" />
                  </div>
                </div>
              </Link>
            </article>
          ))}
        </div>
      </div>
    </section>
  );
}