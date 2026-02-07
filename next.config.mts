import type { NextConfig } from "next";


const nextConfig = {
  images: {
    remotePatterns: [
      {
        protocol: 'http',
        hostname: 'localhost',
        port: '1337',
        pathname: '/uploads/**',
      },
      {
        protocol: 'http',
        hostname: '192.168.1.236',
        port: '1337',
        pathname: '/uploads/**',
      },
      // If you use a production URL later, add it here too
    ],
  },
};

export default nextConfig;
