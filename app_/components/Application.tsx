import NextImage from 'next/image';

export default function Application() {
  return (
    <div className="card">
        <h3 className="card-title">Application</h3>
        <div style={{ display: 'flex', gap: '0.5rem' }}>
        <div style={{ flex: 1, background: 'black', borderRadius: '0.5rem', padding: '0.5rem', textAlign: 'center' }}>
           
            <NextImage 
                    src="/images/playstore.png" 
                    alt="Company Logo" 
                    width={75} 
                    height={35} 
                  />
        </div>
        <div style={{ flex: 1, background: 'black', borderRadius: '0.5rem', padding: '0.5rem', textAlign: 'center' }}>
           
             <NextImage 
                    src="/images/appstore.png" 
                    alt="Company Logo" 
                    width={75} 
                    height={35} 
                  />
        </div>
        </div>
    </div>
  )
}
