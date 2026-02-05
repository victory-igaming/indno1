import './globals.css'
import type { Metadata } from 'next'

import Headers from './components/Header';
import Sponsors from './components/Sponsors';
import Sidebar from './components/Sidebar';
import LotteryCard from './components/LotteryCard';
import Application from './components/Application';
import Footer from './components/Footer';

export const metadata: Metadata = {
  title: {
    default: 'IND NO1 - Most Trusted Gaming & Betting Website', // Fallback/default title
    template: '%s | My Awesome Website', // Template for child pages
  },
  description: 'Experience the thrill of gaming with Cricket Peak Daily Glory Bonus 25%',
  keywords: ['next.js', 'react', 'web development', 'keywords here'], // Shared keywords
  openGraph: {
    title: 'IND NO1 - Most Trusted Gaming & Betting Website',
    description: 'Experience the thrill of gaming with Cricket Peak Daily Glory Bonus 25%A shared description.',
    url: 'https://mywebsite.com',
    siteName: 'My Awesome Website',
  },
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="en" suppressHydrationWarning={true}>
      <body>
        <div className="gaming-container">

           {/* Header */}
           <Headers />

            {/* Main Layout */}
            <div className="main-layout">

               {/* Sidebar */}
                <aside className="sidebar">

                  {/* Sponsors */}
                  <Sponsors/>

                  {/* Navigation */}
                  <Sidebar/>

                  {/* Deposit Bonus */}
                  <LotteryCard/>

                  {/* Deposit Bonus */}
                  <Application/>

                </aside>


                {/* Main Content */}
                <main className="main-content">                  
                  {children}
                </main>
                 

            </div>

             {/* Footer */}
             <Footer/> 

               {/* Floating Support Button */}
            <button className="support-btn">💬</button>               

        </div>

         

        </body>
    </html>
  )
}
