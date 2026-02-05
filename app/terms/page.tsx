'use client';

import React from 'react';


export default function Terms() { 
    const sections = [
    {
      title: '1. Agreement to Terms',
      content: [
        'By accessing and using the IND NO1 platform, you accept and agree to be bound by the terms and provisions of this agreement.',
        'If you do not agree to these Terms and Conditions, you should not use this website or our services.',
        'We reserve the right to modify these terms at any time. Your continued use of the platform following any changes constitutes acceptance of those changes.'
      ]
    },
    {
      title: '2. Eligibility and Account Registration',
      content: [
        'You must be at least 18 years old to create an account and use our services.',
        'You must provide accurate, current, and complete information during registration.',
        'You are responsible for maintaining the confidentiality of your account credentials.',
        'You agree to notify us immediately of any unauthorized use of your account.',
        'We reserve the right to suspend or terminate accounts that violate these terms.'
      ]
    },
    {
      title: '3. User Conduct and Responsibilities',
      content: [
        'You agree to use the platform only for lawful purposes and in accordance with these Terms.',
        'You must not attempt to gain unauthorized access to any part of the platform.',
        'You must not use the platform for any fraudulent or illegal activities.',
        'You must not interfere with or disrupt the platform or servers.',
        'You must not create multiple accounts to abuse bonuses or promotions.'
      ]
    },
    {
      title: '4. Deposits and Withdrawals',
      content: [
        'All deposits are final and non-refundable except as required by law.',
        'Minimum and maximum deposit/withdrawal limits apply as specified on the platform.',
        'Withdrawals may be subject to verification procedures for security purposes.',
        'Processing times vary depending on the payment method selected.',
        'We reserve the right to request additional documentation for large transactions.',
        'Fees may apply for certain payment methods or withdrawal amounts.'
      ]
    },
    {
      title: '5. Bonuses and Promotions',
      content: [
        'All bonuses are subject to specific terms and wagering requirements.',
        'Bonus abuse, including creating multiple accounts, will result in forfeiture and account closure.',
        'Wagering requirements must be met before bonus funds can be withdrawn.',
        'Bonuses expire after a specified period as indicated in the promotion terms.',
        'We reserve the right to modify or cancel any promotion at our discretion.'
      ]
    },
    {
      title: '6. Betting Rules and Game Play',
      content: [
        'All bets are final once placed and cannot be canceled or modified.',
        'In case of obvious errors in odds or results, we reserve the right to void bets.',
        'Maximum bet limits apply and may vary by game or event.',
        'Results are determined by official sources and our decision is final.',
        'Technical malfunctions void all plays and pays for the affected games.'
      ]
    },
    {
      title: '7. Responsible Gaming',
      content: [
        'We promote responsible gaming and provide tools for self-exclusion and limits.',
        'You acknowledge that gaming involves risk and you may lose money.',
        'We encourage you to set deposit limits and take breaks from gaming.',
        'If you believe you have a gambling problem, contact our support team or helpline.',
        'Self-exclusion options are available for players who need to take a break.'
      ]
    },
    {
      title: '8. Intellectual Property',
      content: [
        'All content on the platform is owned by IND NO1 or licensed to us.',
        'You may not reproduce, distribute, or modify any content without permission.',
        'Trademarks, logos, and service marks displayed are the property of their owners.',
        'Unauthorized use of our intellectual property may result in legal action.'
      ]
    },
    {
      title: '9. Privacy and Data Protection',
      content: [
        'We collect and process personal data in accordance with our Privacy Policy.',
        'Your information is protected using industry-standard security measures.',
        'We do not sell or share your personal information with third parties without consent.',
        'You have the right to access, correct, or delete your personal data.',
        'We comply with applicable data protection laws and regulations.'
      ]
    },
    {
      title: '10. Limitation of Liability',
      content: [
        'We are not liable for any indirect, incidental, or consequential damages.',
        'Our total liability is limited to the amount of deposits made in your account.',
        'We are not responsible for losses due to technical failures or interruptions.',
        'You use the platform at your own risk and discretion.',
        'We do not guarantee uninterrupted or error-free service.'
      ]
    },
    {
      title: '11. Dispute Resolution',
      content: [
        'Any disputes arising from these terms shall first be resolved through negotiation.',
        'If negotiation fails, disputes will be resolved through binding arbitration.',
        'Arbitration shall be conducted in accordance with Indian arbitration laws.',
        'The venue for arbitration shall be Mumbai, Maharashtra, India.',
        'You waive the right to participate in class action lawsuits.'
      ]
    },
    {
      title: '12. Termination',
      content: [
        'We may terminate or suspend your account at any time for violation of these terms.',
        'Upon termination, your right to use the platform immediately ceases.',
        'You may close your account at any time by contacting customer support.',
        'Outstanding balances will be returned after verification, minus any fees.',
        'Certain provisions of these terms survive termination of your account.'
      ]
    },
    {
      title: '13. Governing Law',
      content: [
        'These Terms are governed by the laws of India.',
        'You submit to the exclusive jurisdiction of the courts in Mumbai, Maharashtra.',
        'If any provision is found invalid, the remaining provisions remain in effect.',
        'Our failure to enforce any right does not constitute a waiver of that right.'
      ]
    },
    {
      title: '14. Contact Information',
      content: [
        'For questions about these Terms and Conditions, contact us at:',
        'Email: legal@indno1.com',
        'Phone: +91 1800-XXX-XXXX',
        'Address: Mumbai, Maharashtra, India'
      ]
    }
  ];
 
 return (
          <>   

         {/* Hero Section */}
        <section className="hero-section">
          <h1 className="hero-title">Terms & Conditions</h1>
          <p className="hero-subtitle">
            Please read these terms carefully before using our platform
          </p>
          <p className="last-updated">Last Updated: January 28, 2024</p>
        </section>

          <div className="intro-box">
            <p className="intro-text">
              Welcome to IND NO1, India's most trusted gaming and betting platform. These Terms and Conditions 
              ("Terms") govern your access to and use of our website, mobile applications, and services 
              (collectively, the "Platform").
            </p>
            <p className="intro-text">
              By creating an account or using our services, you agree to be bound by these Terms. Please read 
              them carefully. If you do not agree with any part of these Terms, you should not use our Platform.
            </p>
          </div>

          {/* Terms Sections */}
          {sections.map((section, index) => (
            <div key={index} className="section-card">
              <h2 className="section-title">{section.title}</h2>
              <ul className="trmsection-content">
                {section.content.map((item, itemIndex) => (
                  <li key={itemIndex} className="trmsection-item">{item}</li>
                ))}
              </ul>
            </div>
          ))}

          {/* Important Notice */}
          <div className="important-notice">
            <h3 className="notice-title">⚠️ Important Notice</h3>
            <p className="notice-text">
              By using IND NO1, you acknowledge that you have read, understood, and agree to be bound by these 
              Terms and Conditions. These terms constitute a legally binding agreement between you and IND NO1. 
              If you do not agree with these terms, you must immediately discontinue use of the Platform.
            </p>
            <p className="notice-text" style={{ marginTop: '1rem' }}>
              We reserve the right to update these Terms at any time. Material changes will be communicated 
              through email or platform notification. Your continued use of the Platform after such changes 
              constitutes acceptance of the new Terms.
            </p>
          </div>

          {/* Quick Links */}
          <div className="quick-links">
            <h3 className="quick-links-title">Related Legal Documents</h3>
            <div className="links-grid">
              <a href="/privacy-policy" className="link-item">📄 Privacy Policy</a>
              <a href="/responsible-gaming" className="link-item">🛡️ Responsible Gaming</a>
              <a href="/kyc-policy" className="link-item">✅ KYC & Verification Policy</a>
              <a href="/payment-policy" className="link-item">💳 Payment & Withdrawal Policy</a>
              <a href="/bonus-terms" className="link-item">🎁 Bonus Terms & Conditions</a>
              <a href="/cookie-policy" className="link-item">🍪 Cookie Policy</a>
            </div>
          </div>
          </>    
  )

}