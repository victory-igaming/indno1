"use client";

import { useEffect, useState } from "react";
import Image from "next/image";

type DownloadAppModalProps = {
  isOpen: boolean;
  onClose: () => void;
};

type OsType = "android" | "ios";

export default function DownloadAppModal({
  isOpen,
  onClose,
}: DownloadAppModalProps) {
  const [isMobile, setIsMobile] = useState(false);
  const [selectedOs, setSelectedOs] = useState<OsType>("android");
  const [activeQr, setActiveQr] = useState<string | null>(null);

  const qrData = {
    android: {
      title: "Android QR",
      code: "/images/android.jpg",
      downloadUrl: "/apk/indno1-4498-v1.1.5-release.apk",
      buttonImage: "/images/playstore.png",
      step1: "Download the app on your smartphone",
      step2: "Install it and start playing",
    },
    ios: {
      title: "iOS QR",
      code: "/images/ios.png",
      downloadUrl: "https://wifi.example.com/setup",
      buttonImage: "/images/appstore.png",
      step1: "Open the install link on your iPhone",
      step2: "Follow the setup instructions to install",
    },
  };

  useEffect(() => {
    const checkMobile = () => {
      setIsMobile(window.innerWidth < 768);
    };

    checkMobile();
    window.addEventListener("resize", checkMobile);
    return () => window.removeEventListener("resize", checkMobile);
  }, []);

  useEffect(() => {
    if (!isOpen) {
      setActiveQr(null);
      setSelectedOs("android");
    }
  }, [isOpen]);

  useEffect(() => {
    const onEsc = (e: KeyboardEvent) => {
      if (e.key === "Escape") onClose();
    };

    if (isOpen) {
      document.body.style.overflow = "hidden";
      window.addEventListener("keydown", onEsc);
    }

    return () => {
      document.body.style.overflow = "";
      window.removeEventListener("keydown", onEsc);
    };
  }, [isOpen, onClose]);

  const currentItem = qrData[selectedOs];

  const handleDownload = () => {
    if (isMobile) {
      window.location.href = currentItem.downloadUrl;
    } else {
      setActiveQr(currentItem.code);
    }
  };

  if (!isOpen) return null;

  return (
    <>
      <div
        className="fixed inset-0 z-[9998] bg-black/70 backdrop-blur-sm"
        onClick={onClose}
      />

      <div className="fixed inset-0 z-[9999] flex items-center justify-center p-4">
        <div
          className="relative w-full max-w-md overflow-hidden rounded-[28px] border border-white/10 bg-[#111827] text-white shadow-2xl"
          onClick={(e) => e.stopPropagation()}
        >
          {/* Header / Cover */}
          <div className="relative h-[190px] w-full overflow-hidden bg-gradient-to-br from-[#1f2937] via-[#111827] to-[#0f172a]">
            <div className="absolute inset-0 bg-black/20" />

            <button
              onClick={onClose}
              aria-label="Close modal"
              className="absolute right-4 top-4 z-20 flex h-10 w-10 items-center justify-center rounded-full bg-black/35 text-white transition hover:bg-black/50"
              type="button"
            >
              ✕
            </button>

            <div className="absolute bottom-5 left-5 right-5 z-10">
              <p className="mb-2 text-sm font-medium uppercase tracking-[0.16em] text-white/70">
                Install app
              </p>
              <h2 className="text-2xl font-bold leading-tight text-white">
                IND NO1 iGaming App
              </h2>
              <p className="mt-2 text-sm text-white/80">
                Download for Android and iOS devices
              </p>
            </div>

            {/* Optional cover image/logo */}
            <div className="absolute right-4 top-4 opacity-15">
              <Image
                src="/images/mobgame_1.svg"
                alt="IND NO1"
                width={90}
                height={90}
                className="object-contain"
                unoptimized
              />
            </div>
          </div>

          {/* Body */}
          <div className="px-5 pb-5 pt-4">
            {/* OS Toggle */}
            <div className="mb-5 grid grid-cols-2 rounded-2xl bg-white/10 p-1">
              <button
                type="button"
                onClick={() => {
                  setSelectedOs("ios");
                  setActiveQr(null);
                }}
                className={`rounded-xl px-4 py-3 text-sm font-semibold transition ${
                  selectedOs === "ios"
                    ? "bg-[#facc15] text-black shadow"
                    : "text-white/80 hover:text-white"
                }`}
              >
                iOS
              </button>

              <button
                type="button"
                onClick={() => {
                  setSelectedOs("android");
                  setActiveQr(null);
                }}
                className={`rounded-xl px-4 py-3 text-sm font-semibold transition ${
                  selectedOs === "android"
                    ? "bg-[#facc15] text-black shadow"
                    : "text-white/80 hover:text-white"
                }`}
              >
                Android
              </button>
            </div>

            {/* Main visual/content area */}
            <div className="rounded-2xl border border-white/10 bg-white/5 p-4">
              {!activeQr ? (
                <div className="space-y-4">
                  <div className="overflow-hidden rounded-2xl bg-black/20">
                    <div className="flex min-h-[180px] items-center justify-center p-6">
                      <Image
                        src={
                          selectedOs === "android"
                            ? "/images/mobgame_2.svg"
                            : "/images/mobgame_3.svg"
                        }
                        alt={`${selectedOs} app install preview`}
                        width={220}
                        height={140}
                        className="h-auto max-h-[150px] w-auto object-contain"
                        unoptimized
                      />
                    </div>
                  </div>

                  <div className="space-y-3">
                    <div className="flex items-start gap-3">
                      <div className="flex h-7 w-7 shrink-0 items-center justify-center rounded-full bg-[#facc15] text-sm font-bold text-black">
                        1
                      </div>
                      <p className="pt-0.5 text-sm text-white/90">
                        {currentItem.step1}
                      </p>
                    </div>

                    <div className="flex items-start gap-3">
                      <div className="flex h-7 w-7 shrink-0 items-center justify-center rounded-full bg-[#facc15] text-sm font-bold text-black">
                        2
                      </div>
                      <p className="pt-0.5 text-sm text-white/90">
                        {currentItem.step2}
                      </p>
                    </div>
                  </div>
                </div>
              ) : (
                <div className="space-y-4 text-center">
                  <div className="rounded-2xl bg-white p-4">
                    <Image
                      src={activeQr}
                      alt={`${currentItem.title} QR Code`}
                      width={220}
                      height={220}
                      className="mx-auto h-auto w-auto object-contain"
                      unoptimized
                    />
                  </div>
                  <p className="text-sm text-white/85">
                    Scan this QR code with your phone to download the app.
                  </p>
                </div>
              )}
            </div>

            {/* Small descriptive text */}
            <div className="mt-4">
              <p className="text-sm leading-6 text-white/70">
                The IND NO1 mobile app gives players fast access to casino
                games, live dealer experiences, sports betting, and more with a
                smooth, lightweight, mobile-first experience.
              </p>
            </div>
          </div>

          {/* Sticky footer actions */}
          <div className="border-t border-white/10 bg-[#0b1220]/95 px-5 py-4 backdrop-blur">
            <div className="grid grid-cols-2 gap-3">
              <button
                className="flex min-h-[52px] items-center justify-center rounded-2xl bg-[#facc15] px-4 py-3 font-semibold text-black transition hover:brightness-95"
                type="button"
                onClick={handleDownload}
              >
                <span className="flex items-center gap-2">
                  <img
                    src={currentItem.buttonImage}
                    alt={`${selectedOs} store`}
                    className="h-7 object-contain"
                  />
                  <span>Download</span>
                </span>
              </button>

              <button
                className="min-h-[52px] rounded-2xl border border-white/15 bg-white/5 px-4 py-3 font-semibold text-white transition hover:bg-white/10"
                type="button"
                onClick={onClose}
              >
                Close
              </button>
            </div>
          </div>
        </div>
      </div>
    </>
  );
}