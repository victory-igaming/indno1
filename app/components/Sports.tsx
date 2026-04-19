"use client";

import Image from "next/image";
import { Orbitron } from "next/font/google";

const orbitron = Orbitron({
  subsets: ["latin"],
  weight: ["700", "800"],
});

type CardVariant = "tall" | "wide" | "small";

type PromoCard = {
  id: string;
  text: string;
  image: string;
  alt: string;
  variant: CardVariant;
};

const cards: PromoCard[] = [
  {
    id: "left-tall",
    text: "Sports: 100% Welcome Deposit Bonus",
    image: "/images/promo/tiger.webp",
    alt: "Sports promo",
    variant: "tall",
  },
  {
    id: "top-wide-1",
    text: "Invite Friends: Earn High Commission Bonuses",
    image: "/images/promo/invite.webp",
    alt: "Invite friends promo",
    variant: "wide",
  },
  {
    id: "top-wide-2",
    text: "CRICKET PEAK: DAILY GLORY BONUS 25%",
    image: "/images/promo/cricket.webp",
    alt: "Cricket peak promo",
    variant: "wide",
  },
  {
    id: "bottom-small-1",
    text: "Slots & Crash: 100% Welcome Deposit Rewards",
    image: "/images/promo/slots-crash.webp",
    alt: "Slots and crash promo",
    variant: "small",
  },
  {
    id: "bottom-small-2",
    text: "Daily Reload: 25% Bonus for Slots & Fishing",
    image: "/images/promo/reload.webp",
    alt: "Daily reload promo",
    variant: "small",
  },
  {
    id: "bottom-small-3",
    text: "New Player: Up to 50% Slots & Crash Cashback",
    image: "/images/promo/new-player.webp",
    alt: "New player promo",
    variant: "small",
  },
  {
    id: "right-tall",
    text: "VIP Club: Upgrade to Receive Bonus",
    image: "/images/promo/vip.webp",
    alt: "VIP club promo",
    variant: "tall",
  },
];

function splitPromoText(text: string) {
  const parts = text.split(/[:;]/);
  const title = parts[0]?.trim() || text;
  const subtitle = parts.slice(1).join(":").trim();
  return { title, subtitle };
}

export default function CasinoPromoMosaic() {
  const leftTall = cards[0];
  const topWide = cards.slice(1, 3);
  const bottomSmall = cards.slice(3, 6);
  const rightTall = cards[6];

  return (
    <section className="promo-mosaic">
      <div className="promo-mosaic-shell">
        <PromoCardItem
          card={leftTall}
          className="area-left"
          titleClass={orbitron.className}
        />

        <div className="promo-mosaic-center">
          <div className="promo-mosaic-top">
            {topWide.map((card) => (
              <PromoCardItem
                key={card.id}
                card={card}
                titleClass={orbitron.className}
              />
            ))}
          </div>

          <div className="promo-mosaic-bottom">
            {bottomSmall.map((card) => (
              <PromoCardItem
                key={card.id}
                card={card}
                titleClass={orbitron.className}
              />
            ))}
          </div>
        </div>

        <PromoCardItem
          card={rightTall}
          className="area-right"
          titleClass={orbitron.className}
        />
      </div>
    </section>
  );
}

function PromoCardItem({
  card,
  className = "",
  titleClass = "",
}: {
  card: PromoCard;
  className?: string;
  titleClass?: string;
}) {
  const { title, subtitle } = splitPromoText(card.text);

  return (
    <article className={`promo-card promo-card--${card.variant} ${className}`}>
      <div className="promo-card-image-wrap">
        <Image
          src={card.image}
          alt={card.alt}
          fill
          className="promo-card-image"
          sizes={
            card.variant === "tall"
              ? "(max-width: 767px) 48vw, 18vw"
              : card.variant === "wide"
              ? "(max-width: 767px) 48vw, 28vw"
              : "(max-width: 767px) 48vw, 18vw"
          }
          priority={card.id === "left-tall" || card.id === "right-tall"}
        />
      </div>

      <div className="promo-card-text-mask" />

      <div className="promo-card-content">
        <h3 className={`promo-card-title ${titleClass}`}>{title}</h3>
        {subtitle ? <p className="promo-card-subtitle">{subtitle}</p> : null}
      </div>
    </article>
  );
}