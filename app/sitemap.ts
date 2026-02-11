import { MetadataRoute } from 'next'

// The function MUST be the default export
export default function sitemap(): MetadataRoute.Sitemap {
  return [
    {
      url: 'https://indno1.win',
      lastModified: new Date(),
      changeFrequency: 'yearly',
      priority: 1,
    },
    {
      url: 'https://indno1.win/about',
      lastModified: new Date(),
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    // Add your other pages here
  ]
}