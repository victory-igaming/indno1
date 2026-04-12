"use client"

import { useState } from 'react';
import NextImage from 'next/image';
import Link from 'next/link';

export default  function DowloadApp() { 
     //const articles = await getArticles();

   const [isMobile, setIsMobile] = useState(false);

// State holds the data for the QR code, or 'null' when closed
  const [activeQr, setActiveQr] = useState<string | null>(null);

  const qrData = {
    android: { title: "Android QR", code: "/images/android.jpg",downloadUrl: "https://pay.example.com/download" },
    ios: { title: "IOS QR", code: "/images/ios.png",downloadUrl: "https://wifi.example.com/setup" }
  };



const handleClick = (item: { code: string; downloadUrl: string }) => {

    if (isMobile) {
      window.location.href = item.downloadUrl;
    } else {
      setActiveQr(item.code);
    }

};

 return (
          <>   

            {/* Hero Section */}
        <section className="hero-section">
          <div className="hero-content">
            <h1 className="apdown-title">  IND NO1 iGaming App – Download for Android & iOS Devices  </h1>


            <div className="grid grid-cols-2 md:grid-cols-2 gap-4">

<NextImage 
      src="/images/mobgame_3.svg" 
      alt="Indno1 Company Logo" 
      title='Most Trusted<br/>Gaming & Betting<br/>Website'
      width={500} 
      height={200} 
      className="flex items-center justify-center"
      unoptimized 
      loading="lazy"
    />


                
<NextImage 
      src="/images/mobgame_2.svg" 
      alt="Indno1 Company Logo" 
      title='Most Trusted<br/>Gaming & Betting<br/>Website'
      width={500} 
      height={200} 
      className="flex items-center justify-center"
      unoptimized 
      loading="lazy"
    />


                
<NextImage 
        src="/images/mobgame_1.svg" 
        alt="Indno1 Company Logo" 
        title='Most Trusted<br/>Gaming & Betting<br/>Website'
        width={500} 
        height={200} 
       className="flex items-center justify-center"
        unoptimized 
        loading="lazy"
      />

                
<NextImage 
        src="/images/mobgame_4.svg" 
        alt="Indno1 Company Logo" 
        title='Most Trusted<br/>Gaming & Betting<br/>Website'
        width={500} 
        height={200} 
       className="flex items-center justify-center"
        unoptimized 
        loading="lazy"
      />

   </div>
            

            <p className="apdown-subtitle"> 

         The IND NO1 iGaming App brings a complete online gaming experience directly to your mobile device. Whether you are using an Android smartphone or an iPhone, you can easily download the IND NO1 app and enjoy seamless access to your favorite games anytime and anywhere. The app is designed with modern technology to deliver fast performance, secure gameplay, and an easy-to-use interface for all types of players.
       <br />   <br /> 
         With the IND NO1 iGaming mobile application, users can explore a wide range of exciting games including casino games, live dealer games, sports betting, and many other popular entertainment options. The app is optimized for both Android and iOS devices, ensuring smooth gameplay without lag. Its lightweight design allows it to run efficiently even on mid-range smartphones.
     <br />   <br /> 
One of the biggest advantages of the IND NO1 mobile app is convenience. Instead of opening a browser every time, you can simply tap the app icon and instantly access the platform. This saves time and provides a much smoother user experience compared to traditional web browsing.
         
        </p>



         <div className="flex flex-wrap justify-center items-center gap-8 mt-4">
                
                {/* Google Play Button */}                 
                 <a href="/apk/indno1-4498-v1.1.5-release.apk" download>
                <button className="flex justify-items-center justify-center download-now-btn download-andrd" type='button' onClick={() => handleClick(qrData.android)} >
                  <img 
                    src="/images/playstore.png" 
                    alt="Get it on Google Play" 
                    className="h-10 object-contain"      
                  />
                </button></a>

                {/* Apple Store Button */}
                <button className="flex items-center justify-center download-now-btn download-iso" type='button' onClick={() => handleClick(qrData.ios)} >
                  <img 
                    src="/images/appstore.png" 
                    alt="Get it on Google Play" 
                    className="h-10 object-contain"      
                  />
                </button>

          </div> 

          </div>
        </section>

        
          

                   
                 
          </>    
  )

}