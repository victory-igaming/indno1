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
      previewImage: "/images/mobgame_2.svg",
      step1: "Download the app on your smartphone",
      step2: "Install it and start playing",
    },
    ios: {
      title: "iOS QR",
      code: "/images/ios.png",
      downloadUrl: "https://wifi.example.com/setup",
      buttonImage: "/images/appstore.png",
      previewImage: "/images/mobgame_3.svg",
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
    <div className="download-modal-overlay" onClick={onClose}>
      <div
        className="download-modal"
        onClick={(e) => e.stopPropagation()}
      >
        <div className="download-modal__header">
          <div className="download-modal__header-glow" />

          <button
            onClick={onClose}
            aria-label="Close modal"
            className="download-modal__close"
            type="button"
          >
            ✕
          </button>

          <div className="download-modal__branding">
            <p className="download-modal__eyebrow">Install app</p>
            <h2 className="download-modal__title">IND NO1 iGaming App</h2>
            <p className="download-modal__subtitle">
              Fast mobile access for Android and iOS users
            </p>
          </div>

          <div className="download-modal__logoMark">
            <Image
              src="/images/mobgame_1.svg"
              alt="IND NO1"
              width={88}
              height={88}
              unoptimized
            />
          </div>
        </div>

        <div className="download-modal__body">
          <div className="download-modal__tabs">
            <button
              type="button"
              onClick={() => {
                setSelectedOs("android");
                setActiveQr(null);
              }}
              className={`download-modal__tab ${
                selectedOs === "android" ? "is-active" : ""
              }`}
            >
              Android
            </button>

            <button
              type="button"
              onClick={() => {
                setSelectedOs("ios");
                setActiveQr(null);
              }}
              className={`download-modal__tab ${
                selectedOs === "ios" ? "is-active" : ""
              }`}
            >
              iOS
            </button>
          </div>

          <div className="download-modal__card">
            {!activeQr ? (
              <>
                <div className="download-modal__preview">
                  <Image
                    src={currentItem.previewImage}
                    alt={`${selectedOs} preview`}
                    width={220}
                    height={150}
                    className="download-modal__preview-image"
                    unoptimized
                  />
                </div>

                <div className="download-modal__steps">
                  <div className="download-modal__step">
                    <span className="download-modal__step-index">1</span>
                    <span>{currentItem.step1}</span>
                  </div>
                  <div className="download-modal__step">
                    <span className="download-modal__step-index">2</span>
                    <span>{currentItem.step2}</span>
                  </div>
                </div>
              </>
            ) : (
              <div className="download-modal__qrBlock">
                <div className="download-modal__qrCard">
                  <Image
                    src={activeQr}
                    alt={`${currentItem.title} QR Code`}
                    width={220}
                    height={220}
                    unoptimized
                  />
                </div>
                <p className="download-modal__qrText">
                  Scan this QR code with your phone to continue the download.
                </p>
              </div>
            )}
          </div>

          <p className="download-modal__description">
            Enjoy casino games, live dealer action, sports betting and more with
            a faster mobile-first experience built for your device.
          </p>
        </div>

        <div className="download-modal__footer">
          <button
            className="download-modal__action download-modal__action--primary"
            type="button"
            onClick={handleDownload}
          >
            <span className="download-modal__action-content">
              <img
                src={currentItem.buttonImage}
                alt={`${selectedOs} store`}
                className="download-modal__store-icon"
              />
              <span>Download</span>
            </span>
          </button>

          <button
            className="download-modal__action download-modal__action--secondary"
            type="button"
            onClick={onClose}
          >
            Close
          </button>
        </div>
      </div>
    </div>
  );
}