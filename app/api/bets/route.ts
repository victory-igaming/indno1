import { NextResponse } from "next/server";
import bets from "@/data/bets.json";

function generateRandomBet(id: number,slug: string | null) {

  const gameTypes = [
    { id: 'Tennis', names: ["Tennis' Donuts C", "Drac's Tennis", "Funkin' Donuts Tennis"] },
    { id: 'cricket', names: ["Crash cricket", "Wanted Dead or a cricket", "cricket Dead or a Wild"] },
    { id: 'football', names: ["Stake football Baccarat", "football Stake Roulette", "Stake Baccarat football"] },
    { id: 'rugby', names: ["Blackjack rugby", "rugby Blackjack"] }
  ];

  // 1. Determine the category
  let category;
  if (slug) {
    // If slug exists, find the matching category (case-insensitive)
    category = gameTypes.find(gt => gt.id.toLowerCase() === slug.toLowerCase());
  }

  // 2. Fallback: If no slug or invalid slug, pick a random category
  if (!category) {
    category = gameTypes[Math.floor(Math.random() * gameTypes.length)];
  }

 //const games = ["cricket", "rugby", "football", "Tennis"];
  //const category = gameTypes[Math.floor(Math.random() * gameTypes.length)];
  const gameName = category.names[Math.floor(Math.random() * category.names.length)];
  const isWin = Math.random() > 0.6; // 40% win rate
  const betAmount = parseFloat((Math.random() * 5000 + 300).toFixed(2));
  const multiplier = isWin ? parseFloat((Math.random() * 5 + 1).toFixed(2)) : parseFloat((Math.random() * 0.2).toFixed(2));
  const payout = isWin 
    ? parseFloat((betAmount * multiplier).toFixed(2)) 
    : parseFloat(((betAmount * multiplier) - betAmount).toFixed(2));

  return {
  id: id,
  gameid: category.id,
  game: gameName,
  user: "Hidden",
  time: new Date().toISOString().split('.')[0], // Current time in YYYY-MM-DDTHH:MM:SS
  betAmount: betAmount,
  multiplier: multiplier,
  payout: payout,
  status: isWin ? "win" : "loss"
};
  
  //const betAmount = Math.floor(Math.random() * 5000) + 100;
  //const multiplier = (Math.random() * 5).toFixed(2);
  //const payout = (betAmount * Number(multiplier)).toFixed(2);
  /* return {
    id,
    gameid: games[Math.floor(Math.random() * games.length)],
    game: games[Math.floor(Math.random() * games.length)],
    user: "Hidden",
    time: new Date().toLocaleTimeString(),
    betAmount,
    multiplier,
    payout,
    status: multiplier > "1.00" ? "win" : "loss",
  };
  */
}

export async function GET(req: Request) {

  const { searchParams } = new URL(req.url);
  
  const slug = searchParams.get("slug");
   // console.log("searchParams",searchParams);
   let filteredBets = bets;
   // console.log("slug",slug);
  /*
  if (slug) {
    filteredBets = bets.filter((bet) =>
      bet.gameid.toLowerCase().includes(slug.toLowerCase())
    );
  }

   return NextResponse.json({
    success: true,
    data: filteredBets,
  });
  */
    /*
    const bets = Array.from({ length: 7 }, (_, i) =>
      generateRandomBet(i)
    );
    return NextResponse.json(bets); */

    const newLogs = Array.from({ length: 5 }, (_, i) => generateRandomBet(i + 15,slug));
    console.log(JSON.stringify(newLogs, null, 2));
    return NextResponse.json({
      success: true,
      slug_filtered: !!slug,
      category: slug || "all",
      data: newLogs
    });
    


 


}