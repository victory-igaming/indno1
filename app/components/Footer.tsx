import Link from 'next/link';

const topFooterLinks = [
  { label: 'Privacy Policy', href: '/legal/privacy-policy' },
  { label: 'Responsible Gaming', href: '/support/responsible-gaming' },
  { label: 'Fair Play', href: '/legal/fair-play' },
  { label: 'Game Rules', href: '/sport/rules' },
  { label: 'Terms & Conditions', href: '/terms' },
  { label: 'Contact Us', href: '/contact' },
];

const footerGroups = [
  {
    title: 'Casino',
    links: [
      { label: 'Aviator', href: '/playgame/aviator' },
      { label: 'Cricket', href: '/playgame/cricket' },
      { label: 'Jackpot Fishing', href: '/playgame/jackpot-fishing' },
      { label: 'Fortune Gems 2', href: '/playgame/fortune-gems-2' },
      { label: 'XPG Live', href: '/playgame/xpg-live' },
    ],
  },
  {
    title: 'Sports',
    links: [
      { label: 'Trending', href: '/sport/trending' },
      { label: 'Rules', href: '/sport/rules' },
      { label: 'Sport Sponsors', href: '/sport/sport-sponsors' },
      { label: 'Live Scores', href: '/sport/live-sport' },
    ],
  },
  {
    title: 'Support',
    links: [
      { label: 'VIP Club', href: '/support/vip-club' },
      { label: 'Referral', href: '/support/referral' },
      { label: 'Community', href: 'https://support.indno1.win', external: true },
      { label: 'Refer a Friend', href: '/support/refer-a-friend' },
      { label: 'How to Play', href: '/support/how-to-play' },
      { label: 'Payment Methods', href: '/support/payment-methods' },
      { label: 'Promotions', href: '/support/promotions' },
    ],
  },
  {
    title: 'Legal',
    links: [
      { label: 'About Us', href: '/about' },
      { label: 'Fair Play', href: '/legal/fair-play' },
      { label: 'FAQ', href: '/faq' },
      { label: 'Why INDNO1', href: '/legal/why-indno-1' },
      { label: 'Fairness', href: '/legal/fairness' },
      { label: 'Blog', href: '/blog' },
      { label: 'Terms & Conditions', href: '/terms' },
      { label: 'Privacy Policy', href: '/legal/privacy-policy' },
    ],
  },
];

const paymentMethods = [
  { name: 'UPI', src: '/images/payments/upi.png', href: '/support/payment-methods' },
  { name: 'Paytm', src: '/images/payments/paytm.png', href: '/support/payment-methods' },
  { name: 'Google Pay', src: '/images/payments/google-pay.png', href: '/support/payment-methods' },
  { name: 'PhonePe', src: '/images/payments/phonepe.png', href: '/support/payment-methods' },
  { name: 'BHIM', src: '/images/payments/bhim.png', href: '/support/payment-methods' },
  { name: 'RuPay', src: '/images/payments/rupay.png', href: '/support/payment-methods' },
  { name: 'Visa', src: '/images/payments/visa.png', href: '/support/payment-methods' },
  { name: 'Mastercard', src: '/images/payments/mastercard.png', href: '/support/payment-methods' },
];

const socialLinks = [
  { label: 'Facebook', href: 'https://facebook.com', icon: 'f' },
  { label: 'Instagram', href: 'https://instagram.com', icon: '◎' },
  { label: 'Telegram', href: 'https://t.me', icon: 't' },
];

type FooterLink = {
  label: string;
  href: string;
  external?: boolean;
};

function FooterMenuLink({ item }: { item: FooterLink }) {
  if (item.external) {
    return (
      <a
        href={item.href}
        className="site-footer__dropdown-link"
        target="_blank"
        rel="noopener noreferrer"
      >
        {item.label}
      </a>
    );
  }

  return (
    <Link href={item.href} className="site-footer__dropdown-link">
      {item.label}
    </Link>
  );
}

export default function Footer() {
  return (
    <footer className="site-footer-wrap" role="contentinfo" aria-label="Website footer">
      <div className="site-footer">
        <div className="site-footer__inner">
          <nav className="site-footer__topnav" aria-label="Important footer links">
            {topFooterLinks.map((item) => (
              <Link key={item.label} href={item.href} className="site-footer__topnav-link">
                {item.label}
              </Link>
            ))}
          </nav>

          <div className="site-footer__line" />

          <section className="site-footer__menus" aria-label="Footer categories">
            {footerGroups.map((group) => (
              <details key={group.title} className="site-footer__menu-item">
                <summary className="site-footer__menu-trigger">
                  <span>{group.title}</span>
                  <span className="site-footer__menu-caret">▾</span>
                </summary>

                <div className="site-footer__dropdown" role="menu" aria-label={`${group.title} links`}>
                  {group.links.map((link) => (
                    <FooterMenuLink key={`${group.title}-${link.label}`} item={link} />
                  ))}
                </div>
              </details>
            ))}
          </section>

          <section className="site-footer__payments" aria-labelledby="footer-payments-heading">
            <div className="site-footer__payments-head">
              <h2 id="footer-payments-heading" className="site-footer__payments-title">
                Popular Payment Methods in India
              </h2>
              <p className="site-footer__payments-copy">
                Supported digital payment options for Indian users.
              </p>
            </div>

            <div className="site-footer__payments-strip" aria-label="Supported payment methods">
              {paymentMethods.map((method) => (
                <Link
                  key={method.name}
                  href={method.href}
                  className="site-footer__payment-logo-link"
                  aria-label={method.name}
                >
                  <img
                    src={method.src}
                    alt={method.name}
                    className="site-footer__payment-logo"
                    loading="lazy"
                  />
                </Link>
              ))}
            </div>
          </section>

          <section className="site-footer__legal" aria-label="Legal and responsible gaming information">
            <p className="site-footer__legal-text">
              INDNO1 offers online gaming and sports entertainment for adult users. Please review platform rules,
              responsible gaming tools, and payment terms before use.
            </p>
          </section>

          <div className="site-footer__bottom">
            <div className="site-footer__socials" aria-label="Social media">
              {socialLinks.map((social) => (
                <a
                  key={social.label}
                  href={social.href}
                  className="site-footer__social"
                  target="_blank"
                  rel="noopener noreferrer"
                  aria-label={social.label}
                >
                  {social.icon}
                </a>
              ))}
            </div>

            <div className="site-footer__brand">
              <Link href="/" className="site-footer__brand-link" aria-label="INDNO1 home">
                <img
                  src="/images/logo1.png"
                  alt="INDNO1 logo"
                  className="site-footer__brand-logo"
                />
              </Link>
              <p className="site-footer__copyright">
                © 2026 INDNO1. All rights reserved.
              </p>
            </div>

            <div className="site-footer__trust">
              <span className="site-footer__age">18+</span>
            </div>
          </div>
        </div>
      </div>
    </footer>
  );
}