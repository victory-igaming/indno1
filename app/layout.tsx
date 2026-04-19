import "./globals.css";
import type { Metadata } from "next";
import Script from "next/script";

import Sidebar from "./components/Sidebar";
import Footer from "./components/Footer";
import TrustpilotWidget from "./components/TrustpilotWidget";
import LayoutWrapper from "./components/LayoutWrapper";

export const metadata: Metadata = {
  metadataBase: new URL("https://indno1.win"),
  title: {
    default: "IND NO1 – Top Online Games, Big Wins & Instant Play",
    template: "%s ",
  },
  description:
    "IND NO1 is a leading enterprise dedicated to delivering top-tier gaming experiences specifically tailored for the Indian market.",
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en" suppressHydrationWarning={true}>
      <head>
        <meta
          name="google-site-verification"
          content="zUiqPXfp8HqGluXdEn54TLZzkqpVLD7EGRL5Am_1pTA"
        />

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
        <div className="gaming-container">
          <div className="main-layout">
           <LayoutWrapper footer={<Footer />}>
  {children}
</LayoutWrapper>
          </div>

          <TrustpilotWidget />
        </div>

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
  );
}