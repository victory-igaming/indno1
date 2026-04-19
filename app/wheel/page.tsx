"use client";
import React, { useState } from "react";
import { Wheel } from "@/components/Wheel";
 

const prizes = ["₹10", "₹50", "₹20", "₹50", "₹5", "₹300", "₹50", "₹100", "Tryagin"];

export default function WheelPage() {
  const [gameState, setGameState] = useState<"SPINNING" | "WON" | "SIGNUP">("SPINNING");
  const [selectedItem, setSelectedItem] = useState<number | null>(null);
  const [phone, setPhone] = useState("");

  const handleSelectItem = (index: number) => {
    setSelectedItem(index);
    // Transition to 'WON' state after a slight delay to let animation finish
    setTimeout(() => setGameState("WON"), 4000); 
  };

  return (
    <div className="relative min-h-screen bg-[#2b0a04] flex flex-col items-center justify-start overflow-hidden font-sans">
      
      {/* Background Decorative Elements (Simulating the Gold/Sparkle) */}
      <div className="absolute inset-0 bg-[url('/bg-pattern.jpg')] opacity-20 pointer-events-none" />
      
      *:

      <div className="mt-12 z-10 flex flex-col items-center">
        {/* The Wheel Component */}
        <div className="relative p-4 border-4 border-yellow-600 rounded-full shadow-[0_0_50px_rgba(234,179,8,0.3)]">
           <Wheel items={prizes} onSelectItem={handleSelectItem} />
        </div>

       

        {/* "Congratulations" Step */}
        {gameState === "WON" && (
          <div className="absolute inset-0 z-50 flex items-center justify-center bg-black/80 p-6">
            <div className="bg-gradient-to-b from-[#4d1509] to-[#2b0a04] border-2 border-yellow-500 rounded-2xl p-8 w-full max-w-sm text-center shadow-2xl">
              <h2 className="text-3xl font-bold text-yellow-500 mb-2">Congratulations!</h2>
              <p className="text-white text-xl mb-6">You won <span className="text-yellow-400 font-bold">{prizes[selectedItem!]}</span> Bonus Cash!</p>
              
              <div className="flex mb-4">
                <span className="bg-yellow-600 text-white px-3 flex items-center rounded-l">+91</span>
                <input 
                  type="tel" 
                  value={phone}
                  onChange={(e) => setPhone(e.target.value)}
                  className="w-full p-3 bg-yellow-100 text-black rounded-r outline-none" 
                  placeholder="9876543210"
                />
              </div>
              
              <button 
                onClick={() => setGameState("SIGNUP")}
                className="w-full bg-gradient-to-b from-yellow-400 to-yellow-600 py-3 rounded-lg font-bold text-red-900 text-xl"
              >
                NEXT
              </button>
            </div>
          </div>
        )}

        {/* "Sign Up Now" Step */}
        {gameState === "SIGNUP" && (
          <div className="absolute inset-0 z-50 flex items-center justify-center bg-black/80 p-6">
            <div className="bg-[#3d0d04] border-2 border-yellow-500 rounded-2xl p-6 w-full max-w-sm text-center">
              <h2 className="text-2xl font-bold text-white mb-6">Sign Up Now</h2>
              <div className="space-y-4">
                 <input className="w-full p-3 bg-[#1a0502] text-white border border-yellow-900 rounded" placeholder="Mobile Number" value={phone} disabled />
                 <input className="w-full p-3 bg-[#1a0502] text-white border border-yellow-900 rounded" type="password" placeholder="Password" />
                 <div className="flex gap-2">
                    <input className="flex-1 p-3 bg-[#1a0502] text-white border border-yellow-900 rounded" placeholder="Captcha" />
                    <div className="bg-green-900 text-white px-4 py-3 rounded font-mono">7 + 3</div>
                 </div>
                 <button className="w-full bg-yellow-500 py-3 rounded font-bold text-red-900 text-xl">SIGN UP</button>
              </div>
            </div>
          </div>
        )}
      </div>
    </div>
  );
}