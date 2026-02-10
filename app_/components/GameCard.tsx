export default function GameCard({ title }: { title: string }) {
  return (
    <div className="min-w-40 bg-card rounded-xl p-4 border border-gold/20">
      <div className="h-24 bg-black/40 rounded-md mb-3" />
      <h4 className="text-sm font-medium">{title}</h4>
    </div>
  )
}
