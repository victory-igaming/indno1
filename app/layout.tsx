import './globals.css'
import type { Metadata } from 'next'
import Script from "next/script";
import { Suspense } from "react";

import Headers from './components/Header';
import Sponsors from './components/Sponsors';
import Sidebar from './components/Sidebar';
import LotteryCard from './components/LotteryCard';
import Application from './components/Application';
import Footer from './components/Footer';
import TrustpilotWidget from './components/TrustpilotWidget';
// import {LiveChat , ChatButton} from '@/components/LiveChatWidget';

import LayoutWrapper from "./components/LayoutWrapper";

export const metadata: Metadata = {

  metadataBase: new URL("https://indno1.win"),
  title: {
    default: "IND NO1 – Top Online Games, Big Wins &amp; Instant Play",
    template: "%s ",
  },
  description:
    "IND NO1 is a leading enterprise dedicated to delivering top-tier gaming experiences specifically tailored for the Indian market.",
  keywords: [
    "Trusted Gaming",
    "Betting Website",
    "India",
    "India No 01",
    "Entertainment",
    "Gaming Experiences",
    "iGaming",
    "betting app",
    "betting exchange",
    "betting exchange app",
    "betting exchange login",
    "online betting app",
    "cricket betting",
    "sport betting"
  ],
  verification: {
    google: "zUiqPXfp8HqGluXdEn54TLZzkqpVLD7EGRL5Am_1pTA",
  },
  openGraph: {
    type: "website", 
    url: "https://indno1.win",
    siteName: "IND NO1",
    title: "IND NO1 – Top Online Games, Big Wins &amp; Instant Play",
    description:
      "IND NO1 is a leading enterprise dedicated to delivering top-tier gaming experiences specifically tailored for the Indian market.",

    images: [
      {
        url: "https://indno1.win/images/logo1.png",
        width: 1200,
        height: 630,
        alt: "IND NO1 - Most Trusted Gaming Platform",
      },
    ],
  },

  twitter: {
    card: "summary_large_image",
    title: "IND NO1 – Top Online Games, Big Wins &amp; Instant Play",
    description:
      "IND NO1 is a leading enterprise dedicated to delivering top-tier gaming experiences specifically tailored for the Indian market.",
    images: ["https://indno1.win/images/logo1.png"],
  },
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    
    <html lang="en" suppressHydrationWarning={true}>
      <head>  

        
          <meta name="google-site-verification" content="zUiqPXfp8HqGluXdEn54TLZzkqpVLD7EGRL5Am_1pTA" />
    <Script id="gtm-script" strategy="lazyOnload">
  {`
    (function(w,d,s,l,i){w[l]=w[l]||[];
    w[l].push({'gtm.start': new Date().getTime(),event:'gtm.js'});
    var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';
    j.async=true;
    j.src='https://www.googletagmanager.com/gtm.js?id=GTM-NN4XX7MT'+dl;
    f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-NN4XX7MT');
  `}
</Script>

      </head>
      <body>
         {/* GTM Noscript */}
    

        <div className="gaming-container">

           {/* Header */}
           <Suspense fallback={null}>
           <Headers />
           </Suspense>

            {/* Main Layout */}
            <div className="main-layout">

               {/* Sidebar */}
                <LayoutWrapper
                        sidebar={
                          <>
                            <Sponsors />
                            <Sidebar />
                            <LotteryCard />
                            <Application />
                          </>
                        } > {children} </LayoutWrapper>

            </div>

             {/* Footer */}
             <Footer/> 



                         

 <TrustpilotWidget />
        </div>

   {/* Google Analytics */}      
<Script
  src="https://www.googletagmanager.com/gtag/js?id=G-N7FZYSKQT1"
  strategy="lazyOnload"
/>
<Script id="google-analytics" strategy="lazyOnload">
  {`
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'G-N7FZYSKQT1');
  `}
</Script>
<Script
  src="https://plugin-code.salesmartly.com/js/project_628963_648909_1770891882.js"
  strategy="lazyOnload"
/>

        </body>

   


    </html>
  )
}
