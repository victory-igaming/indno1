// app/api/contact/route.ts
import { NextResponse } from 'next/server';
import nodemailer from 'nodemailer';

export async function POST(req: Request) {
  const { name, email, phone, subject, message } = await req.json();

  // 1. Setup Nodemailer Transporter (e.g., using Gmail or SMTP)
  const transporter = nodemailer.createTransport({
    service: 'gmail', // or your SMTP host
    auth: {
      user: process.env.EMAIL_USER, // Your email
      pass: process.env.EMAIL_PASS, // Your App Password
    },
  });

  try {
    // 2. Send the email
    await transporter.sendMail({
      from: `"${name}" <${email}>`,
      to: "support@indno1.com", // Where you want to receive emails
      subject: `New Contact Form: ${subject}`,
      text: `Name: ${name}\nPhone: ${phone}\nEmail: ${email}\n\nMessage:\n${message}`,
      html: `<h3>New Contact Form Submission</h3>
             <p><strong>Name:</strong> ${name}</p>
             <p><strong>Phone:</strong> ${phone}</p>
             <p><strong>Email:</strong> ${email}</p>
             <p><strong>Message:</strong></p>
             <p>${message}</p>`,
    });

    return NextResponse.json({ message: "Email sent successfully" }, { status: 200 });
  } catch (error) {
    console.error(error);
    return NextResponse.json({ message: "Failed to send email" }, { status: 500 });
  }
}