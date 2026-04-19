"use client";

import NextImage from "next/image";
import Link from "next/link";
import { usePathname, useRouter, useSearchParams } from "next/navigation";
import { useEffect, useState } from "react";
import DownloadAppModal from "@/components/DownloadAppModal";

const SearchIcon = () => (
  <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
    <circle cx="11" cy="11" r="8" />
    <path d="m21 21-4.35-4.35" />
  </svg>
);

const MenuIcon = () => (
  <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
    <line x1="4" y1="12" x2="20" y2="12" />
    <line x1="4" y1="6" x2="20" y2="6" />
    <line x1="4" y1="18" x2="20" y2="18" />
  </svg>
);

const CloseIcon = () => (
  <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
    <line x1="18" y1="6" x2="6" y2="18" />
    <line x1="6" y1="6" x2="18" y2="18" />
  </svg>
);

const navItems = [
  { label: "Home", href: "/" },
  { label: "Casino", href: "/casino" },
  { label: "Sports", href: "/sports" },
  { label: "Lottery", href: "/lottery" },
  { label: "Blog", href: "/blog" },
  { label: "Affiliate", href: "/support/affiliate" },
  { label: "VIP Club", href: "/support/vip-club" },
  { label: "FAQ", href: "/faq" },
];

type HeaderProps = {
  onToggleSidebar?: () => void;
  isSidebarCollapsed?: boolean;
};

export default function Header({
  onToggleSidebar,
  isSidebarCollapsed = false,
}: HeaderProps) {
  const pathname = usePathname();
  const router = useRouter();
  const searchParams = useSearchParams();

  const [query, setQuery] = useState("");
  const [isMobileOrTablet, setIsMobileOrTablet] = useState(false);
  const [isDrawerOpen, setIsDrawerOpen] = useState(false);
  const [openDownloadModal, setOpenDownloadModal] = useState(false);

  const searchKey = searchParams.get("search");

  useEffect(() => {
    const checkViewport = () => {
      setIsMobileOrTablet(window.innerWidth < 1024);
    };

    if (searchKey) setQuery(searchKey);

    checkViewport();
    window.addEventListener("resize", checkViewport);
    return () => window.removeEventListener("resize", checkViewport);
  }, [searchKey]);

  useEffect(() => {
    const onEsc = (e: KeyboardEvent) => {
      if (e.key === "Escape") setIsDrawerOpen(false);
    };

    if (isDrawerOpen) {
      document.body.style.overflow = "hidden";
      window.addEventListener("keydown", onEsc);
    }

    return () => {
      document.body.style.overflow = "";
      window.removeEventListener("keydown", onEsc);
    };
  }, [isDrawerOpen]);

  const handleSearchSubmit = (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    if (!query.trim()) return;
    router.push(`/search?search=${encodeURIComponent(query)}`);
    setIsDrawerOpen(false);
  };

  const handlePlayNow = () => {
    router.push("/playnow");
    setIsDrawerOpen(false);
  };

  return (
    <>
      <header className="topbar-shell" role="banner">
        <div className="topbar-bento">
          <div className="topbar-bento__left">
            <button
              type="button"
              className="topbar-iconBtn"
              aria-label="Toggle sidebar"
              onClick={isMobileOrTablet ? () => setIsDrawerOpen(true) : onToggleSidebar}
            >
              <MenuIcon />
            </button>

            <Link href="/" className="topbar-brand" aria-label="IND NO1 home">
              <span className="topbar-brand__logo">
                <NextImage
                  src="/images/logo1.png"
                  alt="IND NO1 logo"
                  width={40}
                  height={40}
                  unoptimized
                  priority
                />
              </span>
              <span className="topbar-brand__text">
                <strong>IND NO1</strong>
                <small>Trusted Gaming Platform</small>
              </span>
            </Link>
          </div>

          <div className="topbar-bento__center">
            <form
              onSubmit={handleSearchSubmit}
              className="topbar-search"
              role="search"
              aria-label="Site search"
            >
              <input
                type="search"
                name="search"
                value={query}
                onChange={(e) => setQuery(e.target.value)}
                placeholder="Search blog, games, sports..."
                className="topbar-search__input"
              />
              <button type="submit" className="topbar-search__submit" aria-label="Search">
                <SearchIcon />
              </button>
            </form>
          </div>

          <div className="topbar-bento__right">
            <nav className="topbar-links hidden lg:flex" aria-label="Header navigation">
              {navItems.map((item) => {
                const isActive = pathname === item.href;
                return (
                  <Link
                    key={item.href}
                    href={item.href}
                    className={`topbar-links__item ${isActive ? "is-active" : ""}`}
                  >
                    {item.label}
                  </Link>
                );
              })}
            </nav>

            <button type="button" className="topbar-cta topbar-cta--gold" onClick={handlePlayNow}>
              Play Now
            </button>

            <button
              type="button"
              className="topbar-cta topbar-cta--green"
              onClick={() => setOpenDownloadModal(true)}
            >
              Download App
            </button>
          </div>
        </div>
      </header>

      {isMobileOrTablet && (
        <>
          <div
            className={`mobile-drawer-backdrop ${isDrawerOpen ? "is-open" : ""}`}
            onClick={() => setIsDrawerOpen(false)}
          />

          <aside className={`mobile-drawer ${isDrawerOpen ? "is-open" : ""}`} aria-hidden={!isDrawerOpen}>
            <div className="mobile-drawer__header">
              <Link href="/" className="topbar-brand" onClick={() => setIsDrawerOpen(false)}>
                <span className="topbar-brand__logo">
                  <NextImage
                    src="/images/logo1.png"
                    alt="IND NO1 logo"
                    width={40}
                    height={40}
                    unoptimized
                  />
                </span>
                <span className="topbar-brand__text">
                  <strong>IND NO1</strong>
                  <small>Trusted Gaming Platform</small>
                </span>
              </Link>

              <button
                type="button"
                className="topbar-iconBtn"
                aria-label="Close menu"
                onClick={() => setIsDrawerOpen(false)}
              >
                <CloseIcon />
              </button>
            </div>

            <nav className="mobile-drawer__nav" aria-label="Mobile navigation">
              {navItems.map((item) => {
                const isActive = pathname === item.href;
                return (
                  <Link
                    key={item.href}
                    href={item.href}
                    className={`mobile-drawer__link ${isActive ? "is-active" : ""}`}
                    onClick={() => setIsDrawerOpen(false)}
                  >
                    {item.label}
                  </Link>
                );
              })}
            </nav>

            <div className="mobile-drawer__actions">
              <button type="button" className="topbar-cta topbar-cta--gold w-full" onClick={handlePlayNow}>
                Play Now
              </button>
              <button
                type="button"
                className="topbar-cta topbar-cta--green w-full"
                onClick={() => {
                  setOpenDownloadModal(true);
                  setIsDrawerOpen(false);
                }}
              >
                Download App
              </button>
            </div>
          </aside>
        </>
      )}

      <DownloadAppModal
        isOpen={openDownloadModal}
        onClose={() => setOpenDownloadModal(false)}
      />
    </>
  );
}