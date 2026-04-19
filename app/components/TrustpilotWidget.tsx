"use client"

import { useEffect, useState } from 'react';

export default function TrustpilotWidget() {
  const [mounted, setMounted] = useState(false);

  useEffect(() => {
    setMounted(true);
    // Cast window to any to bypass the check
    const tp = (window as any).Trustpilot;
    if (tp) {
        tp.loadFromElement(document.querySelector('.trustpilot-widget'));
    }
  }, []);

  if (!mounted) return null;
  
  {
  
  }

  return (
    <div>
     
    </div>
  );
}