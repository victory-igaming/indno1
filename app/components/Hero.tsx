"use client";

import NextImage from "next/image";
import { getStrapiMedia } from "@/services/strapi";
import Carousel from "react-multi-carousel";
import "react-multi-carousel/lib/styles.css";
import { useState, useEffect } from "react";
import Link from "next/link";

export interface StrapiImage {
  url: string;
  alternativeText?: string | null;
  width?: number;
  height?: number;
}

export interface MainSliderItem {
  id: number;
  name: string;
  description: string;
  btntext: string;
  urllink: string;
  image: StrapiImage;
  mobimage: StrapiImage;
}

interface HerobannerProps {
  slides: MainSliderItem[];
}

const Hero = ({ slides }: HerobannerProps) => {
  const [isMobile, setIsMobile] = useState(false);

  useEffect(() => {
    const checkDevice = () => {
      setIsMobile(window.innerWidth < 768);
    };

    checkDevice();
    window.addEventListener("resize", checkDevice);
    return () => window.removeEventListener("resize", checkDevice);
  }, []);

  const responsive = {
    superLargeDesktop: { breakpoint: { max: 4000, min: 3000 }, items: 1 },
    desktop: { breakpoint: { max: 3000, min: 1024 }, items: 1 },
    tablet: { breakpoint: { max: 1024, min: 464 }, items: 1 },
    mobile: { breakpoint: { max: 464, min: 0 }, items: 1 },
  };

  const renderSlide = (slide: MainSliderItem, index: number, mobileImage = false) => {
    const linkurlpath = slide?.urllink;
    const sourceUrl = mobileImage
      ? slide.mobimage?.url || slide.image?.url
      : slide.image?.url;

    const imageUrl = getStrapiMedia(sourceUrl);
    if (!imageUrl) return null;

    return (
      <section key={slide.id || index} className="hero-slide">
        <div className="hero-slide__media">
          <NextImage
            src={imageUrl}
            alt={slide?.image?.alternativeText || slide?.name || "Hero Slide"}
            width={1360}
            height={414}
            className="hero-slide__image"
            priority={index === 0}
            unoptimized
          />

          <div className="hero-slide__overlay" />

          <div className="hero-slide__content">
            <div className="hero-slide__contentInner">
              <h1 className="hero-slide__title">{slide.name}</h1>

              <p className="hero-slide__description">{slide.description}</p>

              {linkurlpath ? (
                <Link href={linkurlpath} className="hero-slide__ctaWrap">
                  <span className="hero-slide__cta">
                    {slide.btntext ? slide.btntext : "Play Now"}
                  </span>
                </Link>
              ) : (
                <button type="button" className="hero-slide__cta">
                  {slide.btntext ? slide.btntext : "Play Now"}
                </button>
              )}
            </div>
          </div>
        </div>
      </section>
    );
  };

  return (
    <div className="hero-bento">
      <div className="hero-bento__inner">
        <Carousel
          responsive={responsive}
          infinite
          autoPlay
          autoPlaySpeed={5000}
          arrows={false}
          showDots={false}
          ssr
          itemClass="carousel-item"
        >
          {slides.map((slide, index) =>
            renderSlide(slide, index, isMobile)
          )}
        </Carousel>
      </div>
    </div>
  );
};

export default Hero;