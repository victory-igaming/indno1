"use client";

import { usePathname } from "next/navigation";
 
 import {SideMobilebar} from '@/components/Sidebar';

export default function LayoutWrapper({
  sidebar,
  children,
}: {
  sidebar: React.ReactNode;
  children: React.ReactNode;
}) {
  const pathname = usePathname();

  const hideSidebarRoutes = ["/playnow", "/register"];
  const hideSidebar = hideSidebarRoutes.includes(pathname);

  return (
    <>
      {!hideSidebar && <aside className="sidebar">{sidebar}</aside>}

      <main className="main-content">
        {children}
      </main>
       
       <SideMobilebar />
    </>
  );
}