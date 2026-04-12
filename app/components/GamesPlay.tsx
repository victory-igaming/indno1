"use client";

import { useState, useRef } from "react";
import { startGamePlay,endGamePlay  } from "@/services/strapi";


interface GamePlay {
  gamename: string;
  demogameurl: string;
  userIp?: string;
  isiframe?: number;
}

export default function GamesPlay({ gamename, demogameurl, userIp, isiframe }: GamePlay) {

  const [showModal, setShowModal] = useState(false);
  const [showPhoneModal, setShowPhoneModal] = useState(false);
  const [phone, setPhone] = useState("");
  const [isLoading, setIsLoading] = useState(true);
  const [isSubmitting, setIsSubmitting] = useState(false);

  const playStartTime = useRef<number | null>(null);
  const playId = useRef<number | null>(null); 

  // Indian phone validation
  const validatePhone = (num: string) => {
    // remove spaces and + symbol
    const cleaned = num.replace(/\s+/g, "").replace("+91", "");
     return /^[6-9]\d{9}$/.test(cleaned);
  };

  const openDemo = () => {

    const today = new Date().toISOString().slice(0,10);
    const savedPhone = localStorage.getItem("phone_"+today);

    if(savedPhone){
      setPhone(savedPhone);
      startPlay(savedPhone);
    }else{
      setShowPhoneModal(true);
    }

  };

  const startPlay = async (phoneNumber?: string) => {

  //if (isSubmitting) return;   // prevent double click
  //setIsSubmitting(true);

 

  const finalPhone = phoneNumber || phone;

  if(!validatePhone(finalPhone)){
    alert("Enter valid Indian phone number");
    return;
  }

  const today = new Date().toISOString().slice(0,10);
  localStorage.setItem("phone_"+today, finalPhone);
  //localStorage.removeItem("phone_"+today);

   const mycurentIp = userIp || "";

  try{

    const data = await startGamePlay(finalPhone, gamename,mycurentIp);
    //console.log("startGamePlay",data)
    if(data){
      playId.current = data.documentId;
     // console.log("playId.current", playId.current);
    }

     playStartTime.current = Date.now();
      setShowPhoneModal(false);
      setIsLoading(true);
      setShowModal(true);

  }catch(err){
    console.log("API error",err);
  }

   setIsSubmitting(false);  // reset flag
  

};


const closeGame = async () => {

  setShowModal(false);

  if(playStartTime.current && playId.current){

    const duration = Math.floor(
      (Date.now() - playStartTime.current) / 1000
    );

    await endGamePlay(playId.current, duration);

  }

};

  const handleRealPlay = () => {
    window.location.href = "https://4498.indno1f.com";
  };

  return (
    <>

      {!showModal && (
        <section>
          <div className="flex gap-4 mt-5 px-5 items-center justify-center">
            <button onClick={openDemo} className="btn-free">
              Play for free
            </button>

            <button onClick={handleRealPlay} className="btn-real">
              Play for Real Money
            </button>
          </div>
        </section>
      )}

      {/* PHONE MODAL */}

      {showPhoneModal && (

          <div className="absolute inset-0 z-50 flex items-center justify-center bg-black/80 p-6">
            <div className="bg-gradient-to-b from-[#4d1509] to-[#2b0a04] border-2 border-yellow-500 rounded-2xl p-8 w-full max-w-sm text-center shadow-2xl">
              <h2 className="text-3xl font-bold text-yellow-500 mb-2">Play Free</h2>
              <p className="text-white text-xl mb-6"> Enter Mobile <span className="text-yellow-400 font-bold">Number</span>  </p>
              
              <div className="flex mb-4">
                <span className="bg-yellow-600 text-white px-3 flex items-center rounded-l">+91</span>
                <input 
                  type="tel" 
                  value={phone}
                  onChange={(e)=>setPhone(e.target.value)}
                  className="w-full p-3 bg-yellow-100 text-black rounded-r outline-none" 
                  placeholder="9876543210"
                />
              </div>
              
              <button 
                 onClick={()=>startPlay(phone)}
                className="w-full bg-gradient-to-b from-yellow-400 to-yellow-600 py-3 rounded-lg font-bold text-red-900 text-xl"
              >
                NEXT
              </button>
            </div>
          </div>        

      )}

      {/* GAME MODAL */}

      {showModal && (
        <div className="relative inset-0 z-[9999] bg-black/90 grid place-items-center p-4">

          <div className="relative w-[95vw] max-w-[1100px] h-[80vh] bg-[#0a0a2a] rounded-lg overflow-hidden flex items-center justify-center">

            <button
              onClick={closeGame}
              className="absolute top-0 right-0 z-[10002] bg-red-600 hover:bg-red-700 text-white px-3 py-2 text-xs font-bold rounded-bl-md"
            >
              Close ✕
            </button>

            {isLoading && (
              <div className="absolute inset-0 z-[10001] bg-black flex items-center justify-center text-white">
                Loading...
              </div>
            )}

            {demogameurl && (
              <iframe
                src={demogameurl}
                className="w-full h-full border-0"
                title="Game Play"
                allowFullScreen
                onLoad={() => setIsLoading(false)}
              />
            )}

          </div>

        </div>
      )}

    </>
  );
}