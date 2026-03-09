import NextImage from 'next/image';


export default function LotteryCard() {
  return (
    <div className="bonus-card">
              {/* <div className="bonus-title">Get</div>
              <div className="bonus-percent">100%</div>
              <div className="bonus-title">Deposit Bonus</div>
              <div className="bonus-badges">
                <span className="bonus-badge">PicPay</span>
                <span className="bonus-badge">Pay</span>
                <span className="bonus-badge">VISA</span>
                <span className="bonus-badge">ePay</span>
              </div> */}
              <NextImage 
                      src="/images/actn100.png" 
                      alt="Indno1 Company Logo" 
                      width={200} 
                      height={200} 
                       
                      unoptimized 
                      loading="lazy"
                    />
    </div>
  )
}
