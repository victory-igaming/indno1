"use client";

import Herobanner from "@/components/Hero";
import Featuredgames from "@/components/FeaturedGames";
import Sports from "@/components/Sports";
import CasinoBets from "@/components/CasinoBets";
import LiveCasino from "@/components/LiveCasino";
import TrandingGame from "@/components/TrandingGame";
import TrandingSport from "@/components/TrandingSport";
import Slots from "@/components/Slots";
import TrandingFaq from "@/components/TrandingFaq";
import Provider from "@/components/Provider";
import HomeMore from "@/components/Homore";
import SpinWheelModal from "@/components/pages/SpinWheelModal";

interface HomeClientProps {
  initialData: any;
  pageTitle?: string;
  description?: string;
}

export default function HomeClient({
  initialData,
  pageTitle,
  description,
}: HomeClientProps) {
  if (!initialData) {
    return null;
  }

  const sliderImages = initialData?.mainslider || [];
  const sportbodyImages = initialData?.sportbody || [];
  const featuregame = initialData?.Featuregame || [];
  const faqgame = initialData?.faqbody || [];
  const hblockgame = initialData?.textbody || [];

  return (
    <>
      <Herobanner slides={sliderImages} />

      <Featuredgames ftrgame={featuregame} />



      <TrandingGame />

      <TrandingSport />

      <LiveCasino />
      <Sports />
      <CasinoBets />

      <Slots />

     

      {faqgame && faqgame.length > 0 && <TrandingFaq faqitem={faqgame} />}

      <div>
        <Provider/>
      </div>
 <HomeMore hblockgame={hblockgame} />
      {/* <SpinWheelModal /> */}
    </>
  );
}