"use client";

import React, { useEffect, useMemo, useState } from "react";
import Wheel from "@/components/Wheel";
import { saveSpringWheel, varifySpringMobile } from "@/services/strapi";
import styles from "./spin-wheel-modal.module.css";


const prizes = ["₹10","₹50","₹20","₹50","₹5","₹300","₹50","₹100","Tryagin"];

type GameState = "SPIN" | "WON" | "SUBMITTED";

type WinMeta = {
  index: number;
  value: string;
  isRetry: boolean;
};

const validatePhone = (num: string) => {
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

  // ✅ FIX 1: SAFE localStorage usage
  useEffect(() => {
    const timer = window.setTimeout(() => {
      if (typeof window !== "undefined") {
        const savedPhone = localStorage.getItem("spnwhel_" + today);

        if (savedPhone) {
          setOpen(false);
        } else {
          setOpen(true);
        }
      }
    }, 400);

    return () => window.clearTimeout(timer);
  }, [today]);

  // ❌ REMOVE THIS (THIS WAS BREAKING BUILD)
  // localStorage.removeItem("spnwhel_"+today);

  const normalizedPhone = useMemo(() => phone.replace(/\D/g, ""), [phone]);

  const isPhoneAlreadyUsed =
    !!submittedPhone && submittedPhone === normalizedPhone;

  const isPhoneValid =
    normalizedPhone.length === 10 && !isPhoneAlreadyUsed;

  const handleVerifyPhone = async () => {
    if (!validatePhone(normalizedPhone)) {
      alert("Enter valid Indian phone number");
      return;
    }

    const response = await varifySpringMobile(phone);

    if (response?.duplicate) {
      setError("This number has already used its chance.");
      setPhoneVerified(false);
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
const status: "claimed" | "expired" | "pending" =
  amount > 0 ? "claimed" : "expired";

    const payload = {
      phone: normalizedPhone,
      amount,
      prize_label: winResult.index.toString(),
      spinstatus: status,
    };

    try {
      const response = await saveSpringWheel(payload);

      if (response?.duplicate) {
        setOpen(false);
        setError("This phone number has already spun today.");
        return;
      }

      setSubmittedPhone(normalizedPhone);
      setGameState("SUBMITTED");

      // ✅ FIX 2: safe localStorage set
      if (typeof window !== "undefined") {
        localStorage.setItem("spnwhel_" + today, normalizedPhone);
      }

    } catch (err) {
      console.error(err);
      setSubmittedPhone(normalizedPhone);
      setGameState("SUBMITTED");
    } finally {
      setLoading(false);
    }
  };

  const handleClose = () => setOpen(false);

  if (!open) return null;

  return (
    <div className={styles["spin-modal-overlay"]}>
      <div className={styles["spin-modal-card"]}>
        <button className={styles["spin-modal-close"]} onClick={handleClose}>×</button>

        <h2 className={styles["spin-modal-title"]}>Spin &amp; Win</h2>

        {gameState === "SPIN" && !phoneVerified && (
          <div className={styles["phone-verification-step"]}>
            <p>Enter your mobile number to start spinning!</p>

            <div className={styles["phone-row"]}>
              <span>+91</span>
              <input
                type="tel"
                value={phone}
                onChange={(e) => {
                  const onlyDigits = e.target.value.replace(/\D/g, "").slice(0, 10);
                  setPhone(onlyDigits);
                  setError("");
                }}
              />
            </div>

            {error && <div>{error}</div>}

            <button onClick={handleVerifyPhone}>
              Verify & Spin
            </button>
          </div>
        )}
      </div>
    </div>
  );
}