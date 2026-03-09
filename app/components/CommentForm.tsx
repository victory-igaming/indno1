'use client';

import { useState } from 'react';
import type { FormEvent } from 'react';

type CommentFormProps = {
  successMessage?: string;
};

export default function CommentForm({
  successMessage = 'Thank you for your comment! It will be reviewed and published shortly.',
}: CommentFormProps) {
  const [comment, setComment] = useState({ name: '', email: '', message: '' });

  const handleSubmit = (e: FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    alert(successMessage);
    setComment({ name: '', email: '', message: '' });
  };

  return (
    <form className="comment-form" onSubmit={handleSubmit}>
      <h3 className="section-title" style={{ marginBottom: '1.5rem' }}>Leave a Comment</h3>
      <div className="form-group">
        <label className="form-label">Name *</label>
        <input
          type="text"
          className="form-input"
          placeholder='Name'
          title='Name'
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
          placeholder='Email'
          title='Email'
          required
          value={comment.email}
          onChange={(e) => setComment({ ...comment, email: e.target.value })}
        />
      </div>
      <div className="form-group">
        <label className="form-label">Comment *</label>
        <textarea
          className="form-textarea"
          placeholder='Comment'
          title='Comment'
          required
          value={comment.message}
          onChange={(e) => setComment({ ...comment, message: e.target.value })}
        />
      </div>
      <button type="submit" className="submit-btn">Post Comment</button>
    </form>
  );
}
