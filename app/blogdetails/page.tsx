'use client';

import React, { useState } from 'react';


export default  function BlogDetails() { 
    const [comment, setComment] = useState({ name: '', email: '', message: '' });

  const relatedPosts = [
    { title: 'Understanding Casino Game Odds', image: '🎰', category: 'Guides', date: 'Jan 26, 2024' },
    { title: 'Aviator Game Strategies', image: '✈️', category: 'Gaming Tips', date: 'Jan 25, 2024' },
    { title: 'Responsible Gaming Guide', image: '🛡️', category: 'Guides', date: 'Jan 22, 2024' },
  ];

  const comments = [
    {
      name: 'Vikas Sharma',
      date: 'January 28, 2024',
      avatar: '👨',
      comment: 'Excellent guide! I\'ve been betting on cricket for years but these strategies really helped me improve my win rate. The bankroll management section was particularly useful.'
    },
    {
      name: 'Priya Kapoor',
      date: 'January 28, 2024',
      avatar: '👩',
      comment: 'Very informative article. As a beginner, I found the section on understanding different bet types extremely helpful. Looking forward to more content like this!'
    },
    {
      name: 'Amit Singh',
      date: 'January 29, 2024',
      avatar: '👨‍💼',
      comment: 'Great tips on live betting! I never thought about monitoring pitch behavior during matches. Will definitely try these strategies in the upcoming IPL season.'
    }
  ];

  const handleCommentSubmit = (e) => {
    e.preventDefault();
    alert('Thank you for your comment! It will be reviewed and published shortly.');
    setComment({ name: '', email: '', message: '' });
  };

 return (
          <>                    
         {/* Article Hero */}
        <div className="article-hero">
          <span className="category-badge">Gaming Tips</span>
          <h1 className="article-title">10 Pro Tips to Maximize Your Cricket Betting Wins</h1>
          <div className="article-meta">
            <div className="meta-item">
              <span>📅</span>
              <span>January 28, 2024</span>
            </div>
            <div className="meta-item">
              <span>⏱️</span>
              <span>8 min read</span>
            </div>
            <div className="meta-item">
              <span>👁️</span>
              <span>12,547 views</span>
            </div>
            <div className="meta-item">
              <span>💬</span>
              <span>23 comments</span>
            </div>
          </div>
          <div className="author-info">
            <div className="author-avatar">👨‍💼</div>
            <div className="author-details">
              <h4>Rajesh Kumar</h4>
              <p>Senior Gaming Analyst | 10+ years of experience in cricket betting and sports journalism</p>
            </div>
          </div>
        </div>

        <div className="article-hero">
          <div className="featured-image">🏏</div>
        </div>

           {/* Main Content */}
          <article className="article-content">
            <div className="content-block">
              <p>
                Cricket betting has evolved into one of the most popular forms of online entertainment in India, 
                especially during major tournaments like the IPL and World Cup. Whether you're a seasoned bettor 
                or just starting your journey, understanding professional strategies can significantly improve 
                your success rate and help you make more informed betting decisions.
              </p>
              <p>
                In this comprehensive guide, I'll share insider tips and proven strategies that professional 
                bettors use to maintain consistent profitability. These aren't get-rich-quick schemes—they're 
                disciplined approaches that, when applied correctly, can give you a real edge in cricket betting.
              </p>
            </div>

            <div className="highlight-box">
              <strong>💡 Key Insight:</strong>
              <p>
                Successful cricket betting is 20% luck and 80% strategy. The bettors who consistently win are 
                those who treat betting as a skill to be mastered, not just a game of chance. They research, 
                analyze, and make calculated decisions based on data and trends.
              </p>
            </div>

            <div className="content-block">
              <h2>1. Master the Art of Research</h2>
              <p>
                Before placing any bet, thorough research is non-negotiable. Professional bettors spend hours 
                analyzing team statistics, player form, pitch conditions, and weather forecasts. Here's what 
                you should be looking at:
              </p>
              <ul>
                <li><strong>Recent Form:</strong> Analyze the last 10 matches for both teams</li>
                <li><strong>Head-to-Head Records:</strong> Historical performance against each other</li>
                <li><strong>Home vs Away:</strong> Performance in home and away conditions</li>
                <li><strong>Player Availability:</strong> Key player injuries or absences</li>
                <li><strong>Pitch Conditions:</strong> How the pitch typically behaves</li>
              </ul>
            </div>

            <div className="tip-box">
              <strong>🎯 Pro Tip:</strong>
              <p>
                Create a simple spreadsheet to track team and player statistics. Include columns for venue, 
                opponent, result, and key performance metrics. Over time, you'll identify patterns that aren't 
                obvious at first glance. Many successful bettors credit their betting journals as their secret weapon.
              </p>
            </div>

            <div className="content-block">
              <h2>2. Bankroll Management is Everything</h2>
              <p>
                This is perhaps the most crucial aspect of successful betting, yet it's often overlooked by 
                beginners. Your bankroll is your betting capital, and managing it properly is the difference 
                between long-term success and going broke.
              </p>
              <h3>The Unit System</h3>
              <p>
                Professional bettors use a unit system to manage their bankroll. Here's how it works:
              </p>
              <ul>
                <li>Divide your total bankroll into 100 units</li>
                <li>Bet 1-2 units on regular bets (your standard stake)</li>
                <li>Bet 3-5 units only on high-confidence plays</li>
                <li>Never bet more than 5% of your bankroll on a single bet</li>
              </ul>
            </div>

            <div className="quote-box">
              <p className="quote-text">
                "The biggest mistake I see beginners make is betting too much of their bankroll on a single bet. 
                Even the best bets lose sometimes. It's about surviving the variance and making smart decisions 
                consistently over time."
              </p>
              <p className="quote-author">— Professional Cricket Bettor, 15 years experience</p>
            </div>

            <div className="content-block">
              <h2>3. Understand Value Betting</h2>
              <p>
                Value betting is about finding odds that are higher than they should be based on your assessment 
                of the actual probability. This is where math meets intuition, and it's how professionals make 
                their money.
              </p>
              <p>
                For example, if you believe Team A has a 60% chance of winning, but the bookmaker is offering 
                odds that imply only a 50% chance, you've found value. Over time, consistently betting on value 
                odds will yield profits.
              </p>
            </div>

            <div className="content-block">
              <h2>4. Specialize in Specific Markets</h2>
              <p>
                Don't try to be an expert in everything. The most successful bettors specialize in 1-2 specific 
                markets or formats. You might focus on:
              </p>
              <ul>
                <li>IPL betting exclusively</li>
                <li>Test match outcomes</li>
                <li>Player performance markets</li>
                <li>Live betting strategies</li>
              </ul>
              <p>
                By specializing, you develop deeper knowledge and can spot opportunities that casual bettors miss.
              </p>
            </div>

            <div className="content-block">
              <h2>5. Master Live Betting</h2>
              <p>
                Live betting (in-play betting) offers unique opportunities because odds change rapidly based on 
                match situations. If you're watching the game and can read momentum shifts, weather changes, or 
                pitch behavior, you can find tremendous value.
              </p>
            </div>

            <div className="tip-box">
              <strong>🚀 Advanced Strategy:</strong>
              <p>
                Watch for "overreactions" in live betting markets. When a wicket falls or a boundary is hit, odds 
                often swing too far in one direction. If you believe the market has overreacted, there's value on 
                the other side. This requires quick thinking and emotional discipline.
              </p>
            </div>

            <div className="content-block">
              <h2>Conclusion</h2>
              <p>
                Cricket betting success doesn't happen overnight. It requires dedication, discipline, continuous 
                learning, and emotional control. The strategies outlined in this guide are used by professional 
                bettors to maintain long-term profitability.
              </p>
              <p>
                Remember: treat betting as a marathon, not a sprint. Focus on making smart, calculated decisions 
                consistently, and the results will follow. Most importantly, always bet responsibly and never 
                wager more than you can afford to lose.
              </p>
              <p>
                Good luck, and may your betting journey be both profitable and enjoyable!
              </p>
            </div>

            {/* Tags */}
            <div className="tags-section">
              <span className="tag">#CricketBetting</span>
              <span className="tag">#BettingTips</span>
              <span className="tag">#IPL2024</span>
              <span className="tag">#SportsBetting</span>
              <span className="tag">#GamingStrategy</span>
              <span className="tag">#ProfessionalBetting</span>
            </div>

            {/* Share */}
            <div className="share-section">
              <h3 className="share-title">Share this article</h3>
              <div className="share-buttons">
                <button className="share-btn" style={{ background: '#1DA1F2' }}>🐦</button>
                <button className="share-btn" style={{ background: '#4267B2' }}>📘</button>
                <button className="share-btn" style={{ background: '#25D366' }}>💬</button>
                <button className="share-btn" style={{ background: '#0088cc' }}>📱</button>
                <button className="share-btn" style={{ background: '#FF4500' }}>🔗</button>
              </div>
            </div>

            {/* Comments */}
            <div className="comments-section">
              <h2 className="section-title">Comments ({comments.length})</h2>
              
              {comments.map((comment, index) => (
                <div key={index} className="comment-item">
                  <div className="comment-header">
                    <div className="comment-avatar">{comment.avatar}</div>
                    <div className="comment-meta">
                      <h4>{comment.name}</h4>
                      <span>{comment.date}</span>
                    </div>
                  </div>
                  <p className="comment-text">{comment.comment}</p>
                </div>
              ))}

              {/* Comment Form */}
              <form className="comment-form" onSubmit={handleCommentSubmit}>
                <h3 className="section-title" style={{ marginBottom: '1.5rem' }}>Leave a Comment</h3>
                <div className="form-group">
                  <label className="form-label">Name *</label>
                  <input
                    type="text"
                    className="form-input"
                    required
                    value={comment.name}
                    onChange={(e) => setComment({ ...comment, name: e.target.value })}
                  />
                </div>
                <div className="form-group">
                  <label className="form-label">Email *</label>
                  <input
                    type="email"
                    className="form-input"
                    required
                    value={comment.email}
                    onChange={(e) => setComment({ ...comment, email: e.target.value })}
                  />
                </div>
                <div className="form-group">
                  <label className="form-label">Comment *</label>
                  <textarea
                    className="form-textarea"
                    required
                    value={comment.message}
                    onChange={(e) => setComment({ ...comment, message: e.target.value })}
                  />
                </div>
                <button type="submit" className="submit-btn">Post Comment</button>
              </form>
            </div>

            </article>

                      
          </>    
  )

}