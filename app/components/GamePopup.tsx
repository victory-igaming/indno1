"use client";

import { useState, useEffect } from "react";

interface GamePopupProps {
  gamename: string;
  demogameurl: string;
}

export default function GamePopup({ gamename, demogameurl }: GamePopupProps) {
  const [isLoading, setIsLoading] = useState(true);
  const [loadProgress, setLoadProgress] = useState(0);

  // Fake progress animation until iframe loads
  useEffect(() => {
    if (!isLoading) return;
    const interval = setInterval(() => {
      setLoadProgress((prev) => (prev < 95 ? prev + Math.random() * 5 : prev));
    }, 200);
    return () => clearInterval(interval);
  }, [isLoading]);

  return (
    <div className="fixed inset-0 z-[2000] flex items-center justify-center bg-black/90 p-4">
      <div className="relative w-full max-w-3xl md:max-w-5xl aspect-video bg-gradient-to-b from-blue-700 to-blue-500 rounded-xl overflow-hidden shadow-2xl border border-gray-800">

        {/* Close Button */}
        <button 
          onClick={() => window.history.back()} 
          className="absolute top-3 right-3 z-[1001] bg-red-600 text-white px-3 py-1 rounded hover:bg-red-700"
        >
          Close ✕
        </button>

        {/* Loading Overlay */}
        {isLoading && (
          <div className="absolute inset-0 z-[1000] flex flex-col items-center justify-center text-white">
            {/* Game Preview */}
            <div className="w-[280px] md:w-[400px] h-[160px] md:h-[220px] mb-4 border-4 border-blue-300 rounded-lg overflow-hidden shadow-lg">
              <img src="/game-preview.png" alt={gamename} className="w-full h-full object-cover"/>
            </div>

            {/* Loading Text */}
            <p className="text-lg font-bold mb-2">Crazy Jackpot! You can easily get it!</p>

            {/* Loading Bar */}
            <div className="w-72 md:w-96 h-3 bg-gray-300 rounded-full overflow-hidden mb-2">
              <div 
                className="h-full bg-green-500 transition-all duration-200"
                style={{ width: `${loadProgress}%` }}
              ></div>
            </div>
            <p>Loading... {Math.floor(loadProgress)}%</p>
          </div>
        )}

        {/* Game Iframe */}
        <iframe
          src={demogameurl}
          className="w-full h-full border-0"
          title={gamename}
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
          allowFullScreen
          onLoad={() => setIsLoading(false)}
        />
      </div>
    </div>
  );
}