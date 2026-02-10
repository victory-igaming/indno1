export default function Section({
  title,
  children,
}: {
  title: string
  children: React.ReactNode
}) {
  return (
    <section>
      <div className="flex items-center justify-between mb-3">
        <h3 className="text-lg font-semibold">{title}</h3>
        <button className="text-gold text-sm">ALL</button>
      </div>

      <div className="flex gap-4 overflow-x-auto pb-2">
        {children}
      </div>
    </section>
  )
}
