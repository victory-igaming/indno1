"use client"

import { useState, useEffect, useRef } from "react";
import { Wheel } from "@/components/Wheel";
import "./wheel.css";

const WHEEL_ITEMS = [
  "₹50",
  "₹20",
  "₹150",
  "₹10",
  "₹50",
  "₹100",
  "₹300",
  "₹50",
  "₹10", 
  "tryagin",
];

type Step = "spin" | "congrats" | "signup";

const COIN_COUNT = 28;

function GoldCoinRain({ active }: { active: boolean }) {
  const coins = Array.from({ length: COIN_COUNT });
  return (
    <div className="absolute inset-0 pointer-events-none overflow-hidden z-20">
      {coins.map((_, i) => {
        const left = 3 + (i * 97) / COIN_COUNT + Math.sin(i * 1.7) * 4;
        const delay = (i * 0.18) % 3.2;
        const duration = 1.8 + (i % 5) * 0.28;
        const size = 16 + (i % 4) * 5;
        return (
          <div
            key={i}
            className="absolute rounded-full"
            style={{
              left: `${left}%`,
              top: `-${size + 10}px`,
              width: size,
              height: size,
              background:
                "radial-gradient(circle at 38% 30%, #fff8a0 0%, #ffd700 38%, #c8880a 75%, #9b6200 100%)",
              boxShadow: "inset 0 -2px 4px rgba(0,0,0,0.3), 0 0 4px rgba(255,200,0,0.5)",
              border: "1.5px solid #e8a800",
              animation: active
                ? `coinFall ${duration}s ${delay}s infinite linear`
                : "none",
            }}
          />
        );
      })}
    </div>
  );
}



function CountdownTimer() {
  const [secs, setSecs] = useState(299);
  useEffect(() => {
    const t = setInterval(() => setSecs((s) => (s > 0 ? s - 1 : 299)), 1000);
    return () => clearInterval(t);
  }, []);
  const m = String(Math.floor(secs / 60)).padStart(2, "0");
  const s = String(secs % 60).padStart(2, "0");
  return (
    <span style={{ color: "#ff4444", fontWeight: 900 }}> {m}:{s} </span>
  );
}

export default function SpinPage() {
  const [step, setStep] = useState<Step>("spin");
  const [wonValue, setWonValue] = useState("₹50");
  const [phone, setPhone] = useState("");
  const [password, setPassword] = useState("");
  const [captchaInput, setCaptchaInput] = useState("");
  const [showCoins, setShowCoins] = useState(false);
  const [isSpinning, setIsSpinning] = useState(false);
  const [countNum, setCountNum] = useState(0);
  const targetNum = useRef(0);

  const handleSelect = (_i: number, value: string) => {
    const val = value.trim().toLowerCase();
    const isTryAgain = val === "try again" || val === "tryagin";
    setWonValue(isTryAgain ? "₹10" : value);
    const num = parseInt((isTryAgain ? "10" : value).replace(/[₹,]/g, ""), 10) || 0;
    targetNum.current = num;
    setShowCoins(true);
    setStep("congrats");
    setIsSpinning(false);
    let start = 0;
    const increment = (num / 1200) * 16;
    const timer = setInterval(() => {
      start += increment;
      if (start >= num) { setCountNum(num); clearInterval(timer); }
      else setCountNum(Math.floor(start));
    }, 16);
  };

  const handleSpinStart = () => {
    setIsSpinning(true);
  };

  const handleNext = () => {
    if (!phone.trim()) return;
    setStep("signup");
  };

  const handleSignUp = () => {
    window.open("https://4498.indno1f.com", "_blank");
  };

  const numericWon = parseInt(wonValue.replace(/[₹,]/g, ""), 10) || 0;

  return (
    <>
      <style>{`
        @keyframes coinFall {
          0% { transform: translateY(-20px) rotate(0deg); opacity: 1; }
          80% { opacity: 1; }
          100% { transform: translateY(110vh) rotate(720deg); opacity: 0; }
        }
        @keyframes sparkleFloat {
          0%, 100% { transform: scale(1) translateY(0); opacity: 0.7; }
          50% { transform: scale(1.6) translateY(-6px); opacity: 1; }
        }
        @keyframes popIn {
          0% { transform: scale(0.7); opacity: 0; }
          70% { transform: scale(1.06); }
          100% { transform: scale(1); opacity: 1; }
        }
        @keyframes shimmer {
          0% { background-position: -200% center; }
          100% { background-position: 200% center; }
        }
        @keyframes pulse-gold {
          0%, 100% { box-shadow: 0 0 18px 4px rgba(255,200,0,0.5), 0 4px 24px rgba(255,120,0,0.4); }
          50% { box-shadow: 0 0 32px 10px rgba(255,220,0,0.75), 0 4px 36px rgba(255,160,0,0.6); }
        }
        @keyframes winBounce {
          0% { transform: scale(0.4) rotate(-6deg); opacity: 0; }
          60% { transform: scale(1.12) rotate(2deg); opacity: 1; }
          80% { transform: scale(0.96) rotate(-1deg); }
          100% { transform: scale(1) rotate(0deg); opacity: 1; }
        }
        @keyframes floatCoin {
          0%, 100% { transform: translateY(0) rotate(0deg); }
          50% { transform: translateY(-14px) rotate(15deg); }
        }
        @keyframes urgencyPulse {
          0%, 100% { opacity: 1; transform: scale(1); }
          50% { opacity: 0.75; transform: scale(1.03); }
        }
        .spin-btn-glow { animation: pulse-gold 1.6s ease-in-out infinite; }
        .win-pop { animation: winBounce 0.6s cubic-bezier(0.34,1.56,0.64,1) forwards; }
        .shimmer-text {
          background: linear-gradient(90deg, #ffd700 0%, #fff5a0 40%, #ffd700 60%, #ffaa00 100%);
          background-size: 200% auto;
          -webkit-background-clip: text;
          -webkit-text-fill-color: transparent;
          animation: shimmer 2s linear infinite;
        }
        .urgency-pulse { animation: urgencyPulse 1.2s ease-in-out infinite; }
      `}</style>

      <div
        className="min-h-screen flex items-center justify-center relative overflow-hidden"
        style={{
          background: "linear-gradient(160deg, #1a0800 0%, #2d1000 30%, #180600 60%, #0d0300 100%)",
        }}
      >
       
        <GoldCoinRain active={showCoins} />

        <div
          className="relative z-30 w-full flex items-center justify-center"
          style={{ minHeight: "100vh" }}
        >
          <div
            className="relative w-full overflow-hidden"
            style={{
              maxWidth: 420,
              background: "linear-gradient(175deg, #2a0e00 0%, #1a0700 40%, #110400 100%)",
              border: "2.5px solid #d4840a",
              borderRadius: 20,
              boxShadow:
                "0 0 0 1px rgba(255,180,0,0.15), 0 0 60px rgba(255,140,0,0.25), 0 30px 80px rgba(0,0,0,0.8)",
              margin: "0 12px",
            }}
          >
            {/* Top glow bar */}
            <div
              style={{
                position: "absolute",
                top: 0,
                left: 0,
                right: 0,
                height: 3,
                background: "linear-gradient(90deg, transparent, #ffd700, #ffaa00, #ffd700, transparent)",
                borderRadius: "20px 20px 0 0",
              }}
            />

            <div className="flex flex-col items-center pb-6">
              {/* Header — always visible */}
              <div
                className="w-full text-center pt-5 pb-2 px-4"
                style={{
                  background: "linear-gradient(180deg, rgba(255,160,0,0.08) 0%, transparent 100%)",
                }}
              >
                <div
                  className="font-black text-2xl tracking-wide shimmer-text"
                  style={{ fontFamily: "Arial Black, sans-serif", letterSpacing: 1 }}
                >
                  🎰 SPIN &amp; WIN
                </div>
                <div
                  className="text-sm mt-1 font-semibold"
                  style={{ color: "#ffc966" }}
                >
                  Exclusive Bonus — Expires in <CountdownTimer />
                </div>
              </div>

              {/* Wheel — always mounted so spin state is preserved */}
              <div
                className="relative w-full flex justify-center items-center"
                style={{ minHeight: step === "spin" ? 390 : 330 }}
              >
                <div
                  className="absolute rounded-full"
                  style={{
                    width: 340,
                    height: 340,
                    background:
                      "radial-gradient(circle, rgba(255,140,0,0.22) 0%, rgba(255,60,0,0.12) 40%, transparent 70%)",
                    filter: "blur(18px)",
                    zIndex: 0,
                  }}
                />
               
                <div
                  className="relative z-10"
                  style={{
                    transform: step === "spin" ? "scale(0.94)" : "scale(0.78)",
                    transformOrigin: "center",
                    transition: "transform 0.4s ease",
                    pointerEvents: step === "spin" ? "auto" : "none",
                  }}
                >
                  <Wheel
                    items={WHEEL_ITEMS}
                    onSelectItem={handleSelect}
                    disabled={isSpinning || step !== "spin"}
                  />
                </div>
              </div>

              {/* BOTTOM PANEL — changes per step */}

              {/* STEP: SPIN */}
              {step === "spin" && (
                <>
                  <div className="w-full px-5 mt-1">
                    <button
                      className="w-full spin-btn-glow rounded-xl font-black text-xl py-4 tracking-widest transition-all active:scale-95"
                      style={{
                        background:
                          "linear-gradient(180deg, #ffdd44 0%, #ffaa00 40%, #e07800 100%)",
                        color: "#3d1200",
                        border: "none",
                        borderRadius: 12,
                        fontSize: 20,
                        letterSpacing: 2,
                        textShadow: "0 1px 0 rgba(255,255,255,0.3)",
                      }}
                      onClick={() => {
                        const btn = document.querySelector(".wheel-center-button") as HTMLButtonElement;
                        if (btn && !btn.disabled) { setIsSpinning(true); btn.click(); }
                      }}
                    >
                      SPIN NOW
                    </button>
                  </div>

                  <div className="text-center px-5 mt-3">
                    <p style={{ color: "#e8a830", fontSize: 13, fontWeight: 600 }}>
                      Sign up and make a deposit to claim your bonus.
                    </p>
                    <p style={{ color: "rgba(220,160,60,0.6)", fontSize: 11, marginTop: 3 }}>
                      To claim your bonus, please, sign up and make a deposit.
                    </p>
                  </div>
                </>
              )}

              {/* STEP: CONGRATS — wheel stays above, panel appears below */}
              {step === "congrats" && (
                <div
                  className="win-pop mx-4 w-full px-5 pt-5 pb-5 text-center rounded-2xl"
                  style={{
                    background: "linear-gradient(160deg, #2a1200 0%, #1e0d00 100%)",
                    border: "2px solid rgba(255,200,0,0.4)",
                    boxShadow: "0 0 30px rgba(255,180,0,0.2)",
                    maxWidth: 380,
                  }}
                >
                  <div
                    className="font-black shimmer-text"
                    style={{ fontSize: 28, letterSpacing: 0.5, marginBottom: 4 }}
                  >
                    Congratulations!
                  </div>
                  <div
                    className="font-black"
                    style={{
                      fontSize: 22,
                      color: "#fff8e0",
                      marginBottom: 2,
                      textShadow: "0 0 12px rgba(255,220,100,0.5)",
                    }}
                  >
                    You won{" "}
                    <span style={{ color: "#ffd700" }}>
                      ₹{countNum.toLocaleString()}
                    </span>{" "}
                    Bonus Cash!
                  </div>
                  <p style={{ color: "#d4a040", fontSize: 13, marginBottom: 16 }}>
                    Enter your mobile number to claim your reward
                  </p>

                  <div
                    className="flex items-center rounded-xl overflow-hidden mb-4"
                    style={{
                      background: "rgba(255,255,255,0.08)",
                      border: "1.5px solid rgba(255,200,0,0.4)",
                    }}
                  >
                    <div
                      className="flex items-center justify-center font-bold text-sm px-3 py-3"
                      style={{
                        background: "rgba(255,200,0,0.1)",
                        color: "#ffd700",
                        borderRight: "1px solid rgba(255,200,0,0.3)",
                        minWidth: 52,
                        whiteSpace: "nowrap",
                      }}
                    >
                      +91
                    </div>
                    <input
                      type="tel"
                      placeholder="Enter mobile number"
                      value={phone}
                      onChange={(e) => setPhone(e.target.value.replace(/\D/g, "").slice(0, 10))}
                      className="flex-1 bg-transparent outline-none px-3 py-3 text-sm"
                      style={{ color: "#fff", caretColor: "#ffd700" }}
                      onKeyDown={(e) => { if (e.key === "Enter") handleNext(); }}
                    />
                  </div>

                  <button
                    onClick={handleNext}
                    className="w-full rounded-xl font-black text-xl py-4 tracking-widest spin-btn-glow transition-all active:scale-95"
                    style={{
                      background: "linear-gradient(180deg, #ffdd44 0%, #ffaa00 40%, #e07800 100%)",
                      color: "#3d1200",
                      border: "none",
                      letterSpacing: 3,
                    }}
                  >
                    NEXT
                  </button>

                  <p className="urgency-pulse mt-3 text-xs font-bold" style={{ color: "#ff6644" }}>
                    ⏰ Offer expires soon — claim now!
                  </p>
                </div>
              )}

              {/* STEP: SIGNUP */}
              {step === "signup" && (
                <div className="w-full px-5 mt-2">
                  {/* Won banner */}
                  <div className="win-pop text-center mb-4">
                    <div
                      className="font-black shimmer-text"
                      style={{ fontSize: 28, letterSpacing: 1 }}
                    >
                      Sign Up Now
                    </div>
                    <div
                      className="font-bold mt-1"
                      style={{ color: "#ffc055", fontSize: 15 }}
                    >
                      Your{" "}
                      <span style={{ color: "#ffd700", fontWeight: 900 }}>
                        ₹{numericWon.toLocaleString()}
                      </span>{" "}
                      Bonus Cash is waiting!
                    </div>
                  </div>

                  {/* Phone */}
                  <div
                    className="flex items-center rounded-xl overflow-hidden mb-3"
                    style={{
                      background: "rgba(255,255,255,0.07)",
                      border: "1.5px solid rgba(255,200,0,0.35)",
                    }}
                  >
                    <div
                      className="flex items-center justify-center font-bold text-sm px-3 py-3"
                      style={{
                        background: "rgba(255,200,0,0.1)",
                        color: "#ffd700",
                        borderRight: "1px solid rgba(255,200,0,0.3)",
                        minWidth: 52,
                      }}
                    >
                      +91
                    </div>
                    <input
                      type="tel"
                      placeholder="Mobile number"
                      value={phone}
                      onChange={(e) => setPhone(e.target.value.replace(/\D/g, "").slice(0, 10))}
                      className="flex-1 bg-transparent outline-none px-3 py-3 text-sm"
                      style={{ color: "#fff", caretColor: "#ffd700" }}
                    />
                  </div>

                  {/* Password */}
                  <div
                    className="flex items-center rounded-xl overflow-hidden mb-3"
                    style={{
                      background: "rgba(255,255,255,0.07)",
                      border: "1.5px solid rgba(255,200,0,0.35)",
                    }}
                  >
                    <input
                      type="password"
                      placeholder="Password"
                      value={password}
                      onChange={(e) => setPassword(e.target.value)}
                      className="flex-1 bg-transparent outline-none px-4 py-3 text-sm"
                      style={{ color: "#fff", caretColor: "#ffd700" }}
                    />
                  </div>

                  {/* Captcha row */}
                  <div className="flex items-center gap-2 mb-4">
                    <div
                      className="flex-1 flex items-center rounded-xl overflow-hidden"
                      style={{
                        background: "rgba(255,255,255,0.07)",
                        border: "1.5px solid rgba(255,200,0,0.35)",
                      }}
                    >
                      <input
                        type="text"
                        placeholder="Captcha answer"
                        value={captchaInput}
                        onChange={(e) => setCaptchaInput(e.target.value)}
                        className="flex-1 bg-transparent outline-none px-4 py-3 text-sm"
                        style={{ color: "#fff", caretColor: "#ffd700" }}
                      />
                    </div>
                    <div
                      className="flex items-center justify-center rounded-xl font-black px-4 py-3 text-sm"
                      style={{
                        background: "rgba(255,200,0,0.12)",
                        border: "1.5px solid rgba(255,200,0,0.4)",
                        color: "#ffd700",
                        whiteSpace: "nowrap",
                        minWidth: 60,
                      }}
                    >
                      7 + 3
                    </div>
                    <button
                      onClick={handleSignUp}
                      className="flex items-center justify-center rounded-xl font-black px-4 py-3"
                      style={{
                        background: "linear-gradient(135deg, #22cc55, #15a03e)",
                        color: "#fff",
                        border: "none",
                        fontSize: 18,
                        minWidth: 48,
                        minHeight: 48,
                      }}
                    >
                      →
                    </button>
                  </div>

                  {/* Sign up button */}
                  <button
                    onClick={handleSignUp}
                    className="w-full rounded-xl font-black text-xl py-4 tracking-widest spin-btn-glow transition-all active:scale-95"
                    style={{
                      background: "linear-gradient(180deg, #ffdd44 0%, #ffaa00 40%, #e07800 100%)",
                      color: "#3d1200",
                      border: "none",
                      letterSpacing: 3,
                    }}
                  >
                    SIGN UP
                  </button>

                  <p className="text-center mt-3 text-xs" style={{ color: "rgba(220,160,60,0.55)" }}>
                    By signing up you agree to the terms &amp; conditions.
                  </p>
                </div>
              )}
            </div>
          </div>
        </div>
      </div>
    </>
  );
}
