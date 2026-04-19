import type { MetadataRoute } from 'next'

const BASE_URL = 'https://indno1.win'

const paths = [
  '/',
  '/about',
  '/blog',
  '/faq',
  '/terms',
  '/casino',
  '/sports',
  '/lottery',
  '/hot',
  '/slots',
  '/cockfight',
  '/live',
  '/crash',
  '/games',
  '/fishing',

  '/support/affiliate',
  '/support/vip-club',
  '/support/referral',
  '/support/community',
  '/support/refer-a-friend',
  '/support/how-to-play',
  '/support/payment-methods',

  '/legal/fair-play',
  '/legal/why-indno-1',
  '/legal/fairness',
  '/legal/privacy-policy',

  '/sport/trending',
  '/sport/rules',
  '/sport/sport-sponsors',
  '/sport/live-sport',

  '/sponsors/xpg-live',
  '/sponsors/lucky-sports',
  '/sponsors/spribe',
  '/sponsors/sg',
  '/sponsors/mg-slot',
  '/sponsors/saba',
  '/sponsors/kingmidas',
  '/sponsors/tv-bet',
  '/sponsors/sv-388',
  '/sponsors/sexybcrt',
  '/sponsors/pp-slot',
  '/sponsors/play-star-slot',
  '/sponsors/pg-slot',
  '/sponsors/og-live',
  '/sponsors/mpoker-chess',
  '/sponsors/jili',
  '/sponsors/jdb',
  '/sponsors/hb-slot',
  '/sponsors/cq-9-fishing',
  '/sponsors/ezugi-live',
  '/sponsors/evo-live',
  '/sponsors/bti-sports',
  '/sponsors/bga-ming',
  '/sponsors/betby',
  '/sponsors/9-w',

  '/playgame/aviator',
  '/playgame/ganesha-fortune',
  '/playgame/mega-fishing',
  '/playgame/rummy',
  '/playgame/teen-patti',
  '/playgame/chicky-run',
  '/playgame/betby-sports',
  '/playgame/bti-sports',
  '/playgame/goal',
  '/playgame/lucky-sports',
  '/playgame/saba-sports',
  '/playgame/9-wickets',
  '/playgame/sexybcrt',
  '/playgame/evo',
  '/playgame/og-live',
  '/playgame/xpg-live',
  '/playgame/pp-live',
  '/playgame/ezugi-live',
  '/playgame/cricket',
  '/playgame/jackpot-fishing',
  '/playgame/fortune-gems-2',
]

export default function sitemap(): MetadataRoute.Sitemap {
  const now = new Date()

  return paths.map((path) => {
    const isHome = path === '/'
    const isBlog = path.startsWith('/blog')
    const isSupport = path.startsWith('/support')
    const isGame = path.startsWith('/playgame')
    const isCategory =
      ['/casino', '/sports', '/lottery', '/hot', '/slots', '/cockfight', '/live', '/crash', '/games', '/fishing'].includes(path)

    let changeFrequency: MetadataRoute.Sitemap[number]['changeFrequency'] = 'weekly'
    let priority = 0.7

    if (isHome) {
      changeFrequency = 'hourly'
      priority = 1
    } else if (isBlog || isSupport) {
      changeFrequency = 'daily'
      priority = 0.8
    } else if (isCategory) {
      changeFrequency = 'daily'
      priority = 0.9
    } else if (isGame) {
      changeFrequency = 'daily'
      priority = 0.8
    }

    return {
      url: `${BASE_URL}${path}`,
      lastModified: now,
      changeFrequency,
      priority,
    }
  })
}