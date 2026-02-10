import { strapiFetch } from '../services/strapi';

/* ===== Strapi v5 Types ===== */

interface Post {
  id: number;
  documentId: string;
  Title: string;
}

export default async function Aboutus() {
  const result = await strapiFetch<Post[]>('posts', { revalidate: 60 });

  if (!result.data || result.data.length === 0) {
    return <p>No data found</p>;
  }

  return (
    <section>
      <h1>{result.data[0].Title}</h1>
    </section>
  );
}
