'use client';

import React, { useState } from 'react';
import Link from 'next/link';

const categories = ['All', 'Gaming Tips', 'News', 'Tournaments', 'Guides', 'Industry Updates'];

  const blogPosts = [
    {
      id: 1,
      title: '10 Pro Tips to Maximize Your Cricket Betting Wins',
      excerpt: 'Learn advanced strategies from professional bettors to improve your cricket betting success rate and maximize returns.',
      category: 'Gaming Tips',
      author: 'Rajesh Kumar',
      date: 'January 28, 2024',
      readTime: '8 min read',
      image: '🏏',
      featured: true
    },
    {
      id: 2,
      title: 'IPL 2024: Complete Betting Guide and Predictions',
      excerpt: 'Everything you need to know about IPL 2024 betting - team analysis, odds, and expert predictions for the upcoming season.',
      category: 'News',
      author: 'Priya Sharma',
      date: 'January 27, 2024',
      readTime: '12 min read',
      image: '🏆',
      featured: true
    },
    {
      id: 3,
      title: 'Understanding Casino Game Odds: A Beginner\'s Guide',
      excerpt: 'Master the mathematics behind popular casino games and learn how to make informed betting decisions.',
      category: 'Guides',
      author: 'Amit Patel',
      date: 'January 26, 2024',
      readTime: '10 min read',
      image: '🎰',
      featured: false
    },
    {
      id: 4,
      title: 'Aviator Game Strategies: Win More with These Tricks',
      excerpt: 'Discover proven strategies and tips to increase your winning chances in the popular Aviator crash game.',
      category: 'Gaming Tips',
      author: 'Sneha Reddy',
      date: 'January 25, 2024',
      readTime: '6 min read',
      image: '✈️',
      featured: false
    },
    {
      id: 5,
      title: 'Weekly Tournament Winners: ₹50 Lakh Prize Pool Distributed',
      excerpt: 'Congratulations to all winners of our weekly gaming tournament. See the leaderboard and prize distribution.',
      category: 'Tournaments',
      author: 'Admin',
      date: 'January 24, 2024',
      readTime: '4 min read',
      image: '🎖️',
      featured: false
    },
    {
      id: 6,
      title: 'New Gaming Regulations in India: What You Need to Know',
      excerpt: 'Stay updated with the latest legal developments in online gaming and betting regulations across Indian states.',
      category: 'Industry Updates',
      author: 'Legal Team',
      date: 'January 23, 2024',
      readTime: '15 min read',
      image: '⚖️',
      featured: false
    },
    {
      id: 7,
      title: 'Responsible Gaming: Setting Limits and Playing Safe',
      excerpt: 'Learn about responsible gaming practices, setting deposit limits, and recognizing problem gambling signs.',
      category: 'Guides',
      author: 'Support Team',
      date: 'January 22, 2024',
      readTime: '7 min read',
      image: '🛡️',
      featured: false
    },
    {
      id: 8,
      title: 'Top 5 Slot Games with Highest RTP This Month',
      excerpt: 'Discover which slot games are offering the best return to player percentages and maximize your gaming value.',
      category: 'Gaming Tips',
      author: 'Game Analyst',
      date: 'January 21, 2024',
      readTime: '5 min read',
      image: '🎲',
      featured: false
    },
    {
      id: 9,
      title: 'Live Casino Experience: How Technology Changed the Game',
      excerpt: 'Explore how advanced streaming technology and professional dealers brought the casino experience to your home.',
      category: 'Industry Updates',
      author: 'Tech Team',
      date: 'January 20, 2024',
      readTime: '9 min read',
      image: '🎥',
      featured: false
    }
  ];

  

export default function Blog() { 
     //const articles = await getArticles();
    // const articles = await strapiFetch("posts");

    //console.log(articles);

     const [selectedCategory, setSelectedCategory] = useState('all');

     const filteredPosts = selectedCategory === 'all' 
    ? blogPosts 
    : blogPosts.filter(post => post.category.toLowerCase() === selectedCategory.toLowerCase());
 
 return (
          <>                
         
          {/* Category Filter */}
          <div className="category-filter">
            {categories.map((category, index) => (
              <button
                key={index}
                className={`category-btn ${selectedCategory === category.toLowerCase() ? 'category-btn-active' : ''}`}
                onClick={() => setSelectedCategory(category.toLowerCase())}
              >
                {category}
              </button>
            ))}
          </div>

          {/* Featured Posts */}
          <div className="featured-section">
            <h2 className="section-title">Featured Articles</h2>
            <div className="featured-grid">
              {filteredPosts.filter(post => post.featured).map(post => (
                <div key={post.id} className="featured-card">
                  <div className="featured-image">{post.image}</div>
                  <div className="featured-content">
                    <span className="post-category">{post.category}</span>
                    <h3 className="post-title">{post.title}</h3>
                    <p className="post-excerpt">{post.excerpt}</p>
                    <div className="post-meta">
                      <span>👤 {post.author}</span>
                      <span>📅 {post.date}</span>
                      <span>⏱️ {post.readTime}</span>
                    </div>
                  </div>
                </div>
              ))}
            </div>
          </div>

          {/* All Posts */}
          <div>
            <h2 className="section-title">Latest Articles</h2>
            <div className="blog-grid">
              {filteredPosts.filter(post => !post.featured).map(post => (                
                <div key={post.id} className="blog-card">
                  <Link className="nav-link" href={`/blog/${post.id}`} >
                  <div className="blog-image">{post.image}</div>
                  <div className="blog-content">
                    <span className="post-category">{post.category}</span>
                    <h3 className="blog-title">{post.title}</h3>
                    <p className="blog-excerpt">{post.excerpt}</p>
                    <div className="post-meta">
                      <span>👤 {post.author}</span>
                      <span>⏱️ {post.readTime}</span>
                    </div>
                  </div></Link>
                </div>
              ))}
            </div>
          </div>

          {/* Newsletter Section */}
          <div className="newsletter-section">
            <h2 className="newsletter-title">Subscribe to Our Newsletter</h2>
            <p className="newsletter-text">
              Get the latest gaming tips, exclusive bonuses, and tournament updates delivered to your inbox
            </p>
            <form className="newsletter-form" onSubmit={(e) => { e.preventDefault(); alert('Thank you for subscribing!'); }}>
              <input
                type="email"
                className="newsletter-input"
                placeholder="Enter your email address"
                required
              />
              <button type="submit" className="newsletter-btn">Subscribe Now</button>
            </form>
          </div>
                
          </>    
  )

}