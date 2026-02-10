import type { Metadata } from 'next';
import { strapiFetch } from '../services/strapi';
import { buildMetadata } from '../services/seo';

export const revalidate = 60;

export async function generateMetadata(): Promise<Metadata> {
  return buildMetadata({
    title: 'Articles | IND NO1',
    description: 'Browse articles and updates from IND NO1.',
    canonicalPath: '/article',
  });
}

export default async function Aboutus() {
  const articles = await strapiFetch<any[]>('posts', { revalidate: 60 });

  if (!articles.data || articles.data.length === 0) {
    return <h1>About Us Loading</h1>;
  }

  return (
    <>
      <h1>About Us Loading</h1>
      <div className="relative rounded-xl overflow-hidden bg-liner-to-r from-yellow-700 to-yellow-500 p-6">
        {articles.data.map((article: any) => (
          <div key={article.id} className="racing-card">
            <div className="racing-title">{article.documentId} {article.Title}</div>
            <div className="flex-1 racing-img">
            </div>
            <div className="flex-1 space-y-4">
              <p className="text-gray-300">
                {article.slug} {article.published}
              </p>
            </div>
          </div>
        ))}
      </div>
    </>
  );
}
