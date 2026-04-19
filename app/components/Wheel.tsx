import React, { useMemo, useState } from "react";
import "./wheel.css";

interface WheelProps {
  items: string[];
  disabled?: boolean;
  onSelectItem?: (
    index: number,
    value: string,
    meta?: { isRetry: boolean }
  ) => void;
}

type LabelPosition = {
  x: number;
  y: number;
  rotation: number;
};

export function Wheel({
  items,
  disabled = false,
  onSelectItem,
}: WheelProps) {
  const [rotation, setRotation] = useState(0);
  const [isSpinning, setIsSpinning] = useState(false);
  const [hasUsedRetry, setHasUsedRetry] = useState(false);
  const [canRetry, setCanRetry] = useState(false);

  const segmentAngle = 360 / items.length;

  const segmentColors = useMemo(
    () => [
      "#18c47c",
      "#38bfe7",
      "#ff7a2b",
      "#ffc933",
      "#1fb45f",
      "#6b35cb",
      "#ff4b35",
      "#dca300",
      "#f0d062",
      "#5f2bc1",
    ],
    []
  );

  const conicGradient = useMemo(() => {
    const stops: string[] = [];

    items.forEach((_, index) => {
      const start = index * segmentAngle;
      const end = start + segmentAngle;
      const color = segmentColors[index % segmentColors.length];
      stops.push(`${color} ${start}deg ${end}deg`);
    });

    return `conic-gradient(from -90deg, ${stops.join(", ")})`;
  }, [items, segmentAngle, segmentColors]);

  const isTryAgainLabel = (value: string) => {
    const normalized = value.trim().toLowerCase();
    return normalized === "tryagin" || normalized === "try again";
  };

  const spinToIndex = (index: number, callback?: () => void) => {
    const selectedCenterAngle = index * segmentAngle + segmentAngle / 2;
    const fullSpins = 5 * 360;
    // Conic gradient uses "from -90deg" (starts at the left/9-o'clock position).
    // The pointer sits at the top = 90deg from the conic start.
    // Correct target: rotate so that the conic's (90 - selectedCenterAngle) lands at the top.
    const targetRotation = fullSpins + ((90 - selectedCenterAngle + 360) % 360);

    setIsSpinning(true);
    setRotation((prev) => prev + targetRotation);

    window.setTimeout(() => {
      setIsSpinning(false);
      callback?.();
    }, 5000);
  };

  const handleSpin = () => {
    if (disabled || isSpinning || !items.length) return;

    const selectedIndex = Math.floor(Math.random() * items.length);
    const selectedValue = items[selectedIndex];
    const isRetrySpin = canRetry;

    spinToIndex(selectedIndex, () => {
      if (isTryAgainLabel(selectedValue)) {
        if (!hasUsedRetry && !isRetrySpin) {
          setCanRetry(true);
          return;
        }

        setCanRetry(false);
        setHasUsedRetry(true);
        onSelectItem?.(selectedIndex, selectedValue, { isRetry: true });
        return;
      }

      onSelectItem?.(selectedIndex, selectedValue, {
        isRetry: isRetrySpin,
      });

      setCanRetry(false);
      if (isRetrySpin) {
        setHasUsedRetry(true);
      }
    });

    if (canRetry) {
      setCanRetry(false);
      setHasUsedRetry(true);
    }
  };

  const labelPositions = useMemo<LabelPosition[]>(() => {
    const size = 308;
    const center = size / 2;

    const radius = 100;

    return items.map((_, index) => {
      const midAngle = index * segmentAngle + segmentAngle / 2;
      // Convert from conic-internal angle (0 = conic start = CSS -90deg = 9-o'clock)
      // to CSS screen angle (0 = top, clockwise). Then use sin/−cos for screen coords.
      const cssAngleDeg = midAngle - 90;
      const angleRad = (cssAngleDeg * Math.PI) / 180;
      const x = center + Math.sin(angleRad) * radius;
      const y = center - Math.cos(angleRad) * radius;

      return {
        x,
        y,
        rotation: midAngle,
      };
    });
  }, [items, segmentAngle]);

  return (
    <div className="wheel-stage">
      <div className="wheel-shell">
        <div className="wheel-pointer" />
        <div className="wheel-side-arrow wheel-side-arrow-left" />
        <div className="wheel-side-arrow wheel-side-arrow-right" />
        <div className="wheel-bulb-ring" />

        <div
          className={`wheel ${isSpinning ? "spinning" : ""}`}
          style={{ transform: `rotate(${rotation}deg)` }}
        >
          <div className="wheel-face" style={{ background: conicGradient }}>
            <div className="wheel-face-overlay" />

            {items.map((item, index) => {
              const pos = labelPositions[index];
              const tryAgain = isTryAgainLabel(item);

              return (
                <div
                  key={`${item}-${index}`}
                  className={`wheel-label-absolute ${
                    tryAgain ? "wheel-label-absolute-try-again" : ""
                  }`}
                  style={{
                    left: `${pos.x}px`,
                    top: `${pos.y}px`,
                    transform: `translate(-50%, -50%) rotate(${pos.rotation}deg)`,
                  }}
                >
                  <span
                    className={`wheel-label ${
                      tryAgain ? "wheel-label-try-again" : ""
                    }`}
                  >
                    {tryAgain ? "TRY AGAIN" : item}
                  </span>
                </div>
              );
            })}

            <div className="wheel-inner-gold-ring" />
          </div>
        </div>

        <button
          type="button"
          className="wheel-center-button"
          onClick={handleSpin}
          disabled={disabled || isSpinning}
        >
          <span>{disabled ? "USED" : canRetry ? "SPIN AGAIN" : "SPIN"}</span>
        </button>
      </div>
    </div>
  );
}

export default Wheel;