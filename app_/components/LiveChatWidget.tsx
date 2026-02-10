'use client';

import { useState } from 'react';
import { LiveChatWidget, EventHandlerPayload } from '@livechat/widget-react';

export  function LiveChat() {
  function handleOnReady(event: EventHandlerPayload<'onReady'>) {
    // Optional: Log when chat is ready
    console.log("LiveChat is ready");
  }

  return (
    <LiveChatWidget
      license="19431978" // Get this from your LiveChat dashboard
      visibility="minimized" 
      onReady={handleOnReady}
    />
  );
}


export function ChatButton() {
const [isLoading, setIsLoading] = useState(false);

  const handleChatOpen = () => {
    setIsLoading(true);

    // Cast window to any to avoid the TypeScript error
  const { LiveChatWidget } = window as any;

  if (LiveChatWidget) {
    LiveChatWidget.call('maximize');
    setTimeout(() => setIsLoading(false), 800);
  } else {
    setIsLoading(false);
  }
  };

return (
<button 
      onClick={handleChatOpen}
      disabled={isLoading}
      className="your-button-styles"
    >
      {isLoading ? (
        <span className="flex items-center">
          <svg className="animate-spin h-5 w-5 mr-2" viewBox="0 0 24 24">
            {/* Simple Loading Spinner SVG */}
            <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4" fill="none"></circle>
            <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4z"></path>
          </svg>
          Loading...
        </span>
      ) : (
        "Chat with Support"
      )}
    </button>


);

}