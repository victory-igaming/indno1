import Herobanner from '../components/Hero';
import Featuredgames from '../components/FeaturedGames';
import Sports from '../components/Sports';
import Featuredsports from '../components/FeaturedSports';
import LiveSports from '../components/LiveSports';
import LiveCasino from '../components/LiveCasino';
import Slots from '../components/Slots';
import LotteryDraw from '../components/LotteryDraw';
import Provider from '../components/Provider';

export default function Home() {
  return (
    <>
      {/* Hero Banner */}
      <Herobanner />

      {/* Featured Games */}
      <Featuredgames />

      {/* Casino & Sports */}
      <Sports />

      {/* Featured Sports */}
      <Featuredsports />

      {/* Live Sports */}
      <LiveSports />

      {/* Live Casino */}
      <LiveCasino />

      {/* Slots */}
      <Slots />

      {/* Upcoming Lottery Draw */}
      <LotteryDraw />

      {/* Provider Logos */}
      <Provider />
    </>
  );
  //return <GamingLandingPage />
}
