"use client"

import { Swiper, SwiperSlide } from "swiper/react"
import { Navigation } from "swiper/modules"

import GameCard from "./GameCard"
import LotteryCard from "./LotteryCard"

export default function GameRailSwiper({
  title,
  type,
}: {
  title: string
  type?: "lottery"
}) {
  return (
    <section>
      {/* Header */}
      <div className="flex justify-between mb-3">
        <h3 className="text-lg font-semibold">{title}</h3>
        <span className="text-gold text-sm cursor-pointer">ALL</span>
      </div>

      {/* Swiper */}
      <Swiper
        modules={[Navigation]}
        spaceBetween={14}
        slidesPerView={1.4}
        navigation
        breakpoints={{
          480: {
            slidesPerView: 2.2,
          },
          768: {
            slidesPerView: 3.2,
          },
          1024: {
            slidesPerView: type === "lottery" ? 3 : 4.5,
          },
        }}
      >
        {(type === "lottery"
          ? Array.from({ length: 4 })
          : Array.from({ length: 8 })
        ).map((_, i) => (
          <SwiperSlide key={i}>
            {type === "lottery" ? <LotteryCard /> : <GameCard title="Casino" />}
          </SwiperSlide>
        ))}
      </Swiper>
    </section>
  )
}
