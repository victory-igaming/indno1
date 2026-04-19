"use client";

import Link from "next/link";
import NextImage from "next/image";
import { usePathname } from "next/navigation";
import Sponsors from "@/components/Sponsors";
import LotteryCard from "@/components/LotteryCard";
import Application from "@/components/Application";

const sidebarItems = [
  { id: "hot", label: "Hot", image: "/sideicon/hot.png", href: "/hot" },
  { id: "slots", label: "Slots", image: "/sideicon/slots.png", href: "/slots" },
  { id: "casino", label: "Casino", image: "/sideicon/casino.png", href: "/casino" },
  { id: "sports", label: "Sports", image: "/sideicon/sports.png", href: "/sports" },
  { id: "cockfight", label: "Cock Fight", image: "/sideicon/cockfighting.png", href: "/cockfight" },
  { id: "live", label: "Live", image: "/sideicon/live.png", href: "/live" },
  { id: "crash", label: "Crash", image: "/sideicon/crash.png", href: "/crash" },
  { id: "games", label: "Games", image: "/sideicon/games.png", href: "/games" },
  { id: "lottery", label: "Lottery", image: "/sideicon/lottery.png", href: "/lottery" },
  { id: "fishing", label: "Fishing", image: "/sideicon/fishing.png", href: "/fishing" },
];

type SidebarProps = {
  collapsed?: boolean;
};

export default function Sidebar({ collapsed = false }: SidebarProps) {
  const pathname = usePathname();

  return (
    <aside className={`sidebar-shell sidebar-desktop-only ${collapsed ? "is-collapsed" : ""}`}>
      <div className="sidebar-panel sidebar-panel--full">
        <div className="sidebar-sponsors">
          <Sponsors />
        </div>

        <div className="sidebar-header">
          <span className="sidebar-header__dot" />
          <span className="sidebar-header__title">Explore</span>
        </div>

        <nav className="sidebar-nav" aria-label="Primary site navigation">
          {sidebarItems.map((item) => {
            const isActive = pathname === item.href;

            return (
              <Link
                href={item.href}
                key={item.id}
                className={`sidebar-link ${isActive ? "is-active" : ""}`}
              >
                <span className="sidebar-link__iconWrap">
                  <NextImage
                    src={item.image}
                    alt={item.label}
                    width={24}
                    height={24}
                    unoptimized
                    loading="lazy"
                  />
                </span>
                <span className="sidebar-link__label">{item.label}</span>
                <span className="sidebar-link__chevron">›</span>
              </Link>
            );
          })}
        </nav>

        <div className="sidebar-sponsors">
          <LotteryCard />
          <Application />
        </div>
      </div>
    </aside>
  );
}

export function SideMobilebar() {
  const pathname = usePathname();

  return (
    <nav className="sidebar-mobile mobile-nav-only" aria-label="Mobile navigation">
      {sidebarItems.slice(0, 5).map((item) => {
        const isActive = pathname === item.href;

        return (
          <Link
            href={item.href}
            key={item.id}
            className={`sidebar-mobile__item ${isActive ? "is-active" : ""}`}
          >
            <span className="sidebar-mobile__iconWrap">
              <NextImage
                src={item.image}
                alt={item.label}
                width={22}
                height={22}
                unoptimized
              />
            </span>
            <span className="sidebar-mobile__label">{item.label}</span>
          </Link>
        );
      })}
    </nav>
  );
}