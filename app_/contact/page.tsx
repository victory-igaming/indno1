'use client';

import React, { useState } from 'react';
import Link from 'next/link';

export default function Contatus() { 
     //const articles = await getArticles();
     //const articles = await strapiFetch("posts");

    //console.log(articles);

    const [formData, setFormData] = useState({
    name: '',
    email: '',
    phone: '',
    subject: '',
    message: ''
  });

const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
  setFormData({ ...formData, [e.target.name]: e.target.value });
};


const handleSubmit = async (e: React.FormEvent) => {
  e.preventDefault();
  
  try {
    const response = await fetch('/api/contact', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(formData),
    });

    if (response.ok) {
      alert('Email sent successfully!');
      setFormData({ name: '', email: '', phone: '', subject: '', message: '' }); // Reset form
    } else {
      alert('Something went wrong. Please try again.');
    }
  } catch (error) {
    console.error(error);
    alert('Failed to connect to the server.');
  }
};

  const handleSubmitOld = ({e}:any) => {
    e.preventDefault();
    alert('Thank you for contacting us! We will get back to you soon.');
  };

  const contactInfo = [
    { icon: '📧', title: 'Email Us', detail: 'support@indno1.com', subdDetail: 'We reply within 24 hours', extanalLink: '' },
    { icon: '📞', title: 'Call Us', detail: '+94 771 007 278', subdDetail: 'Mon-Sun, 24/7 Available' , extanalLink: 'https://wa.me/+94771007278' },
    { icon: '💬', title: 'Live Chat', detail: 'Chat with us now', subdDetail: 'Average response time: 2 min' , extanalLink: 'https://direct.lc.chat/19431978/' },
   
  ];

  const faqs = [
    { question: 'How do I create an account?', answer: 'Click on "Play Now" and follow the simple registration process. You\'ll need to provide basic information and verify your email.' },
    { question: 'What payment methods do you accept?', answer: 'We accept UPI, Net Banking, Credit/Debit Cards, PayTM, PhonePe, Google Pay, and various other digital wallets.' },
    { question: 'How long do withdrawals take?', answer: 'Most withdrawals are processed within 24-48 hours. E-wallet withdrawals are typically faster, often within a few hours.' },
    { question: 'Is my personal information safe?', answer: 'Yes, we use bank-level encryption and follow strict data protection protocols to keep your information secure.' },
    { question: 'Do you offer customer support in regional languages?', answer: 'Yes, we offer support in Hindi, English, Tamil, Telugu, Bengali, and other major Indian languages.' },
  ];
 
 return (
          <>
            {/* Contact Card */}                    
          <div className="contact-grid">
            {contactInfo.map((info, index) => (
              <div key={index} className="contact-card">
                 {
                 info.extanalLink || info.extanalLink.length >= 0 ? (
                  <>
                   <Link className="nav-link" href={info.extanalLink} target="_blank" rel="noopener noreferrer" >
                <div className="contact-icon">{info.icon}</div>
                <div className="contact-title">{info.title}</div>
                <div className="contact-detail">{info.detail}</div>
                <div className="contact-subdetail">{info.subdDetail}</div>
                </Link>
                  </>
                 ) : (
                  <>
                   <div className="contact-icon">{info.icon}</div>
                <div className="contact-title">{info.title}</div>
                <div className="contact-detail">{info.detail}</div>
                <div className="contact-subdetail">{info.subdDetail}</div>
                  </>

                 )
                 }
               
              </div>
            ))}
          </div>

          {/* Contact Form and Info */}
          <div className="form-section">
            <div className="form-container">
              <h2 className="form-title">Send Us a Message</h2>
              <form onSubmit={handleSubmit}>
                <div className="form-group">
                  <label className="form-label">Full Name *</label>
                  <input
                    type="text"
                    name="name"
                    className="form-input"
                    value={formData.name}
                    onChange={handleChange}
                    required
                    placeholder="Enter your full name"
                  />
                </div>
                <div className="form-group">
                  <label className="form-label">Email Address *</label>
                  <input
                    type="email"
                    name="email"
                    className="form-input"
                    value={formData.email}
                    onChange={handleChange}
                    required
                    placeholder="your.email@example.com"
                  />
                </div>
                <div className="form-group">
                  <label className="form-label">Phone Number</label>
                  <input
                    type="tel"
                    name="phone"
                    className="form-input"
                    value={formData.phone}
                    onChange={handleChange}
                    placeholder="+91 XXXXX XXXXX"
                  />
                </div>
                <div className="form-group">
                  <label className="form-label">Subject *</label>
                  <input
                    type="text"
                    name="subject"
                    className="form-input"
                    value={formData.subject}
                    onChange={handleChange}
                    required
                    placeholder="How can we help?"
                  />
                </div>
                <div className="form-group">
                  <label className="form-label">Message *</label>
                  <textarea
                    name="message"
                    className="form-textarea"
                    value={formData.message}
                    onChange={handleChange}
                    required
                    placeholder="Tell us more about your inquiry..."
                  />
                </div>
                <button type="submit" className="submit-btn">Send Message</button>
              </form>
            </div>

            <div className="info-section">
              <h2 className="info-title">Quick Support</h2>
              <div className="info-item">
                <div className="info-icon">⚡</div>
                <div className="info-content">
                  <h4>Instant Response</h4>
                  <p>Our live chat support team typically responds within 2 minutes during business hours.</p>
                </div>
              </div>
              <div className="info-item">
                <div className="info-icon">🌐</div>
                <div className="info-content">
                  <h4>Multi-Language Support</h4>
                  <p>We offer assistance in Hindi, English, Tamil, Telugu, Bengali, and other regional languages.</p>
                </div>
              </div>
              <div className="info-item">
                <div className="info-icon">🔒</div>
                <div className="info-content">
                  <h4>Secure Communication</h4>
                  <p>All communications are encrypted and your privacy is our top priority.</p>
                </div>
              </div>
              <div className="info-item">
                <div className="info-icon">📱</div>
                <div className="info-content">
                  <h4>Mobile App Support</h4>
                  <p>Get instant help through our mobile app available on Android and iOS.</p>
                </div>
              </div>
            </div>
          </div>      

         
          </>    
  )

}