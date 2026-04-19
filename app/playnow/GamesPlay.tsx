"use client";

import { useState } from "react";

interface GamePlay {
  gamename:string;
  demogameurl: string;
  isiframe?: number;
}

export default function GamesPlay({ gamename, demogameurl }: GamePlay) {
  const [showModal, setShowModal] = useState(false);
  const [isLoading, setIsLoading] = useState(true);

  const handleRealPlay = () => {
    window.location.href = "https://4498.indno1f.com";
  };

  const openDemo = () => {
    setShowModal(true);
    setIsLoading(true); // Reset loading state when opening
  };

  return (
    <>
      <section className="games-section">
        <div className="section-header mb-4 px-5">
          <h3 className="section-title text-xl font-semibold">🎰 Play {gamename} Now</h3>
        </div>

        <div className="flex gap-4 mt-5 px-5 items-center justify-center">
          <button 
            onClick={openDemo} 
            className="transition mobDownIcon"
          
          >
            Play for free
          </button>

          <button 
            onClick={handleRealPlay} 
            className="transition play-now-btn "
            style={{padding:'10px 6px'}}
          >
            Play for Real Money
          </button>
        </div>
      </section>

      {/* --- MODAL POPUP --- */}
      {showModal && (
        <div className="fixed inset-0 z-[999] flex items-center justify-center bg-black/90 p-4">
          <div className="relative w-full max-w-5xl aspect-video bg-[#1a1a1a] rounded-xl overflow-hidden shadow-2xl border border-gray-800">
            
            {/* Close Button */}
            <button 
              onClick={() => setShowModal(false)}
              className="absolute top-2 right-4 z-[1001] bg-red-600 text-white px-3 py-1 rounded hover:bg-red-700"
               style={{padding:'6px 4px'}}
            >
              Close ✕
            </button>

            {/* --- LOADING OVERLAY (Video) --- */}
            {isLoading && (
              <div className="absolute inset-0 z-[1000] flex items-center justify-center bg-black">
                <video 
                  autoPlay 
                  muted 
                  loop 
                  className="w-full h-full object-cover"
                >
                  <source src="/loading.mp4" type="video/mp4" />
                  Your browser does not support the video tag.
                </video>
                {/* Optional Branding overlay text/logo can go here */}
              </div>
            )}

            {/* --- GAME IFRAME --- */}
            {demogameurl && (
              <iframe
                src={demogameurl}
                className="w-full h-full border-0"
                title="Game Play"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowFullScreen
                onLoad={() => setIsLoading(false)} // Hides video when game loads
              />
            )}
          </div>
        </div>
      )}
    </>
  );
}