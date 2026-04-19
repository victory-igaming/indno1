"use client"

import NextImage from 'next/image';
import { useState } from 'react';

export default function Application() {

  // State holds the data for the QR code, or 'null' when closed
  const [activeQr, setActiveQr] = useState<string | null>(null);
  const qrData = {
    button1: { title: "Android QR", code: "/images/android.jpg" },
    button2: { title: "IOS QR", code: "/images/ios.jpg" }
  };



  return (
    <div className="card hidden lg:block">
        <h3 className="card-title">Application</h3>
        <div style={{ display: 'flex', gap: '0.5rem' }}>
        <div style={{ flex: 1, background: 'black', borderRadius: '0.5rem', padding: '0.5rem', textAlign: 'center' }}>
           
            <NextImage 
                    src="/images/playstore.png" 
                    alt="Company Logo" 
                    width={75} 
                    height={35} 
                    onClick={() => setActiveQr(qrData.button1.code)}
                  />
        </div>
        <div style={{ flex: 1, background: 'black', borderRadius: '0.5rem', padding: '0.5rem', textAlign: 'center' }}>
           
             <NextImage 
                    src="/images/appstore.png" 
                    alt="Company Logo" 
                    width={75} 
                    height={35} 
                    onClick={() => setActiveQr(qrData.button2.code)}
                  />
        </div>
        </div>

         {/* The Popup Overlay */}
         {activeQr && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50">
          <div className="bg-white p-6 rounded-lg text-center">
            <h2 className="text-lg font-bold mb-4">Your QR Code</h2>
            
            {/* The Image changes based on which button was clicked */}
            <img src={activeQr} alt="QR Code" className="w-48 h-48 mx-auto mb-4" />
            
            <button 
              onClick={() => setActiveQr(null)} // Reset to null to close
              className="mt-2 text-sm text-gray-500 underline"
            >
              Close
            </button>
          </div>
        </div>
      )}


    </div>
  )
}
