"use client";

import { useEffect, useState, useRef } from "react";


const sportsCategories = [
  { id: 'cricket', label: 'Cricket', icon: '🏏' },
  { id: 'football', label: 'Football', icon: '⚽' },
  { id: 'rugby', label: 'Rugby', icon: '🏉' },
  { id: 'Tennis', label: 'Tennis', icon: '🎾' }, // Fixed icon
];



export default function CasinoBets({ initialBets }: { initialBets: any[] }) {

  const [activeTab, setActiveTab] = useState('cricket');
  const [liveData, setLiveData]   = useState<any>(null);
  const [isLoading, setIsLoading] = useState(true);

  //const [bets, setBets] = useState([]);
  const [bets, setBets] = useState<any[]>([]);

  // Use a ref to track if it's the first fetch for a specific tab
  const isFirstFetch = useRef(true);

   const fetchBets = async (currentTab: string, isSilent: boolean = false) => {

    if (!isSilent) setIsLoading(true);
      // console.log("isLoading",isLoading);
     try {
       
        /*
         let url = "";
        if (activeTab === "cricket") url = `/api/bets?slug=${activeTab}`;
        else if (activeTab === "football") url = `/api/bets?slug=${activeTab}`;
        else if (activeTab === "rugby") url = `/api/bets?slug=${activeTab}`;
        else if (activeTab === "Tennis") url = `/api/bets?slug=${activeTab}`;
        else url = "/api/bets"; */

        const url = `/api/bets?slug=${activeTab}`;        
        const res   = await fetch(url);
      
        if (!res.ok) {
          throw new Error("API failed");
        }
        
        const result = await res.json();
        // If result.data is an array, we take the newest one
        const newBetsArray = result.data || [];
        if (isSilent) {
          // Line-by-line update: Add 1 new item to the top, remove 1 from bottom
          const newSingleBet = newBetsArray[0];
          setBets((prevBets) => {
                // Create a unique key by combining API ID and the current timestamp
                const uniqueBet = { 
                  ...newSingleBet, 
                  uniqueKey: `${newSingleBet.id}-${Date.now()}` 
                };
                
                const updatedBets = [uniqueBet, ...prevBets.slice(0, 6)]; 
                return updatedBets;
          });

        } else {
          // Initial tab load: Fill the whole table (first 7 items)
          setBets(newBetsArray.slice(0, 7));
        }

    } catch (error) {
        console.error("Fetch error:", error);
    } finally {
        setIsLoading(false);
    }
  
  };

  useEffect(() => {
    isFirstFetch.current = true;
    fetchBets(activeTab, false); // first load

    const interval = setInterval(() => {
      fetchBets(activeTab, true);
    }, 30000); // 30 seconds

    return () => clearInterval(interval);
  }, [activeTab]);

    /*
    if (activeTab === "cricket" && bets) { } 
    else if (activeTab === "football" && bets) {} 
    else if (activeTab === "rugby" && bets) {} 
    else if (activeTab === "Tennis" && bets) {} */
      

 

  return (
    <div className="rowBetting w-full">

        {/* Tab Header Area */}
        <div className="flex items-center">
          {sportsCategories.map((sport) => (
            <button
              key={sport.id}
              onClick={() => setActiveTab(sport.id)}
              className={`p-5 rounded-t-lg transition-all duration-200 flex items-center gap-2 whitespace-nowrap font-bold  ${
                  activeTab === sport.id ? 'bg-[#ffb800] text-black shadow-[0_-2px_10px_rgba(255,184,0,0.3)]' : 'text-[#8c6b3d] hover:text-[#ffb800]'}` }
                  style={{ padding: '20px' }}
            > 
            <span>{sport.icon}</span> {sport.label}
            </button>
          ))}
        </div>

          {/* Dynamic Content Area: Mapping displayData instead of categories */}
          <div className="">
            {isLoading ? (
            <div className="col-span-full text-center text-[#ffb800] animate-pulse p-50" style={{ padding: '150px' }}>
              {activeTab} Loading Live Scores...
            </div>
            ) : (
                  <>
                    <div className="rowBettingHead">
                            <span>Game</span>
                            <span>User</span>
                            <span>Time</span>
                            <span>Bet Amount</span>
                            <span> Multiplier </span>
                            <span>Payout</span>
                          </div>


                        {bets.map((bet: any) => {
                          // Logic to check if the bet is a win
                          const isWin = bet.status === "win";
                          return (
                          <div key={bet.uniqueKey || bet.id} className="rowBettingData">
                            <span>{bet.game}</span>
                            <span>{bet.user}</span>
                            <span>{bet.time}</span>
                            <span>${bet.betAmount.toLocaleString()}</span>
                            <span>{bet.multiplier}×</span>
                            {/* Payout - Dynamic Color and Formatting */}
                            <span
                              style={{
                                color: isWin ? "#00ff66" : "#ff4444",
                                fontWeight: "bold",
                              }}
                            >
                              {/* Formatting logic: ensure $ is before the negative sign if preferred, 
                                  or handle the JSON's negative value directly */}
                              {bet.payout < 0 
                                ? `$-${Math.abs(bet.payout).toLocaleString()}` 
                                : `$${bet.payout.toLocaleString()}`
                              }
                            </span>
                          </div>
                        )}
                        
                        )}
                  </>
              )}
          </div>



        
    </div>
  );
}