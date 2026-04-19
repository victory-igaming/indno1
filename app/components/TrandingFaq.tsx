"use client";

import React, { useState } from "react";
import { BlocksRenderer } from "@strapi/blocks-react-renderer";

function TrandingFaq({ faqitem = [] }: { faqitem: any[] }) {
  const [isSectionOpen, setIsSectionOpen] = useState(false);
  const [openFAQ, setOpenFAQ] = useState<number | null>(null);

  const toggleSection = () => {
    setIsSectionOpen((prev) => !prev);
  };

  const toggleFAQ = (index: number) => {
    setOpenFAQ(openFAQ === index ? null : index);
  };

  if (!faqitem?.length) return null;

  return (
    <section
      className={`footer-faq footer-faq--collapsible ${
        isSectionOpen ? "is-open" : ""
      }`}
      aria-label="Frequently asked questions"
    >
      <button
        type="button"
        className="footer-faq__mainToggle"
        onClick={toggleSection}
        aria-expanded={isSectionOpen}
        aria-controls="footer-faq-main-panel"
      >
        <div className="footer-faq__mainToggleText">
          <span className="footer-faq__eyebrow">Info</span>
          <h2 className="footer-faq__title">Frequently Asked Questions</h2>
        </div>

        <span className="footer-faq__mainIcon" aria-hidden="true">
          <svg
            viewBox="0 0 24 24"
            width="18"
            height="18"
            fill="none"
            stroke="currentColor"
            strokeWidth="2.4"
            strokeLinecap="round"
            strokeLinejoin="round"
          >
            <path d="M6 9l6 6 6-6" />
          </svg>
        </span>
      </button>

      <div
        id="footer-faq-main-panel"
        className="footer-faq__mainPanel"
        aria-hidden={!isSectionOpen}
      >
        <div className="footer-faq__list">
          {faqitem.map((faq: any, index: number) => {
            const isOpen = openFAQ === index;

            return (
              <article
                key={index}
                className={`footer-faq__item ${isOpen ? "is-open" : ""}`}
              >
                <button
                  type="button"
                  className="footer-faq__question"
                  onClick={() => toggleFAQ(index)}
                  aria-expanded={isOpen}
                  aria-controls={`footer-faq-panel-${index}`}
                >
                  <span className="footer-faq__questionText">{faq.name}</span>
                  <span className="footer-faq__icon" aria-hidden="true">
                    <svg
                      viewBox="0 0 24 24"
                      width="18"
                      height="18"
                      fill="none"
                      stroke="currentColor"
                      strokeWidth="2.4"
                      strokeLinecap="round"
                      strokeLinejoin="round"
                    >
                      <path d="M6 9l6 6 6-6" />
                    </svg>
                  </span>
                </button>

                <div
                  id={`footer-faq-panel-${index}`}
                  className="footer-faq__answerWrap"
                >
                  <div className="footer-faq__answer">
                    {faq.description && (
                      <BlocksRenderer
                        content={faq.description}
                        blocks={{
                          paragraph: ({ children }) => (
                            <p className="footer-faq__p">{children}</p>
                          ),
                          heading: ({ children, level }) => {
                            if (level === 2) {
                              return (
                                <h3 className="footer-faq__h3">{children}</h3>
                              );
                            }
                            return <h4 className="footer-faq__h4">{children}</h4>;
                          },
                          list: ({ children, format }) => {
                            if (format === "ordered") {
                              return <ol className="footer-faq__ol">{children}</ol>;
                            }
                            return <ul className="footer-faq__ul">{children}</ul>;
                          },
                          link: ({ children, url }) => (
                            <a
                              href={url}
                              target="_blank"
                              rel="noopener noreferrer"
                              className="footer-faq__link"
                            >
                              {children}
                            </a>
                          ),
                        }}
                        modifiers={{
                          bold: ({ children }) => (
                            <strong className="footer-faq__strong">
                              {children}
                            </strong>
                          ),
                          italic: ({ children }) => <em>{children}</em>,
                          code: ({ children }) => (
                            <code className="footer-faq__code">{children}</code>
                          ),
                        }}
                      />
                    )}
                  </div>
                </div>
              </article>
            );
          })}
        </div>
      </div>
    </section>
  );
}

export default TrandingFaq;