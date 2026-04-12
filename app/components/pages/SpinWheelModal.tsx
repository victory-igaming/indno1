import React, { useEffect, useMemo, useState } from "react";
import Wheel from "@/components/Wheel";
import { saveSpringWheel,varifySpringMobile } from "@/services/strapi";
import "./spin-wheel-modal.css";

const prizes = [
  "₹10",
  "₹50",
  "₹20",
  "₹50",
  "₹5",
  "₹300",
  "₹50",
  "₹100",
  "Tryagin",
];

type GameState = "SPIN" | "WON" | "SUBMITTED";

type WinMeta = {
  index: number;
  value: string;
  isRetry: boolean;
};

// Indian phone validation
const validatePhone = (num: string) => {
    // remove spaces and + symbol
    const cleaned = num.replace(/\s+/g, "").replace("+91", "");
     return /^[6-9]\d{9}$/.test(cleaned);
  };

export default function SpinWheelModal() {
  const [open, setOpen] = useState(false);
  const [gameState, setGameState] = useState<GameState>("SPIN");
  const [selectedItem, setSelectedItem] = useState<number | null>(null);
  const [winResult, setWinResult] = useState<WinMeta | null>(null);
  const [phone, setPhone] = useState("");
  const [loading, setLoading] = useState(false);
  const [submittedPhone, setSubmittedPhone] = useState("");
  const [error, setError] = useState("");
  const [phoneVerified, setPhoneVerified] = useState(false);

    const today = new Date().toISOString().slice(0,10);

  useEffect(() => {
    const timer = window.setTimeout(() => {
      const savedPhone = localStorage.getItem("spnwhel_"+today);
      if(savedPhone){
        setOpen(false);
      }else{
         setOpen(true);
      }
   
    }, 400);

    return () => window.clearTimeout(timer);
  }, []);

  const normalizedPhone = useMemo(() => phone.replace(/\D/g, ""), [phone]);
  const isPhoneAlreadyUsed =
    !!submittedPhone && submittedPhone === normalizedPhone;
  const isPhoneValid = normalizedPhone.length === 10 && !isPhoneAlreadyUsed;


 localStorage.removeItem("spnwhel_"+today);

  const handleVerifyPhone = async () => {
      if(!validatePhone(normalizedPhone)){
        alert("Enter valid Indian phone number");
        return;
      }
    // if (!normalizedPhone || normalizedPhone.length !== 10) {
    //   setError("Please enter a valid 10-digit mobile number.");
    //   return;
    // }

     const response = await varifySpringMobile(phone);

 
      if(response?.duplicate){
        setError("This number has already used its chance.");   
        setPhoneVerified(false);
        //setOpen(false);
        return;
      }

      if (isPhoneAlreadyUsed) {
        setError("This number has already used its chance.");
        return;
      }

      setError("");
      setPhoneVerified(true);
  };

  const handleSelectItem = (
    index: number,
    value: string,
    meta?: { isRetry: boolean }
  ) => {
    setSelectedItem(index);
    setWinResult({
      index,
      value,
      isRetry: !!meta?.isRetry,
    });
    setGameState("WON");
    setError("");
  };

  const handleSubmitWinner = async () => {
    if (!winResult) {
      setError("Please spin the wheel first.");
      return;
    }

    setLoading(true);
    setError("");
    const amount = Number(winResult.value.replace("₹", ""));
    const status: "pending" | "claimed" | "expired" = amount > 0 ? "claimed" : "expired";
   
    const payload = {
      phone: normalizedPhone,
      amount: amount,
      prize_label: winResult.index.toString(),
      spinstatus: status,
    };

    try {
      const mycurentIp = ""
      const response = await saveSpringWheel(payload);

      if (response?.duplicate) {
        setOpen(false);
        setError("This phone number has already spun today.");
        return;
      }

      if (!response) {
        throw new Error("Failed to submit winner details");
      }

      setSubmittedPhone(normalizedPhone);
      setGameState("SUBMITTED");
      localStorage.setItem("spnwhel_"+today, normalizedPhone);

      
    } catch (err) {
      console.error(err);
      setSubmittedPhone(normalizedPhone);
      setGameState("SUBMITTED");
    } finally {
      setLoading(false);
    }

  };

  const handleClose = () => {
    setOpen(false);
  };

  const handleReset = () => {
    setPhone("");
    setPhoneVerified(false);
    setGameState("SPIN");
    setSelectedItem(null);
    setWinResult(null);
    setError("");
  };

  if (!open) return null;

  return (
    <div className="spin-modal-overlay">
      <div className="spin-modal-card">
        <button className="spin-modal-close" onClick={handleClose}>
          ×
        </button>

        <h2 className="spin-modal-title">Spin &amp; Win</h2>

        {/* Phone verification step - shown first */}
        {gameState === "SPIN" && !phoneVerified && (
          <div className="phone-verification-step">
            <p className="phone-instruction">
              Enter your mobile number to start spinning!
            </p>
            <div className="phone-row">
              <span className="country-code">+91</span>
              <input
                type="tel"
                value={phone}
                onChange={(e) => {
                  const onlyDigits = e.target.value.replace(/\D/g, "").slice(0, 10);
                  setPhone(onlyDigits);
                  setError("");
                }}
                className="phone-input"
                placeholder="9876543210"
              />
            </div>
           
      {error && <div className="form-error">{error}</div>}
            <button
              onClick={handleVerifyPhone}
              className="next-btn"
              disabled={!normalizedPhone.length}  >
              Verify & Spin
            </button>
          </div>
        )}

  {gameState === "SPIN" && !phoneVerified && (
         <div className="tnc-row">            
              <span className="tnc-code">** T&C Apply</span> 
         </div>   )}

        {/* Wheel spinning step - shown after phone verification */}
        {(gameState === "SPIN" && phoneVerified) && (
          <div className="spin-modal-wheel-wrap">
            <Wheel
              items={prizes}
              disabled={gameState !== "SPIN"}
              onSelectItem={handleSelectItem}
            />
          </div>
        )}

        {gameState === "WON" && winResult && (
          <div className="win-step">
            <h3 className="win-step-title">Congratulations!</h3>
            <p className="win-step-text">
              You won{" "}
              <span className="highlight-amount">{prizes[selectedItem!]}</span>{" "}
              Bonus Cash!
            </p>

            {winResult.isRetry && (
              <p className="retry-note">Lucky bonus spin applied.</p>
            )}

            <button
              onClick={handleSubmitWinner}
              className="next-btn"
              disabled={loading}
            >
              {loading ? "Submitting..." : "Claim Prize"}
            </button>
          </div>
        )}

        {gameState === "SUBMITTED" && winResult && (
          <div className="submitted-step">
            <h3 className="win-step-title">Success!</h3>
            <p className="win-step-text">
              Your number <span className="highlight-amount">+91 {submittedPhone}</span> was saved.
            </p>
            <p className="win-step-text">
              Final reward: <span className="highlight-amount">{winResult.value}</span>
            </p>
            <a className="claim-bonus"  href="https://4498.indno1f.com"> Sign up to Claim Bonus</a>
            <p className="used-note">
              No more spin chances are allowed for this number.
            </p>
          </div>
        )}
      </div>
    </div>
  );
}