"use client";

import { Suspense, useState } from "react";
import { usePathname } from "next/navigation";

import Header from "@/components/Header";
import Sidebar, { SideMobilebar } from "@/components/Sidebar";

type LayoutWrapperProps = {
  footer?: React.ReactNode;
  children: React.ReactNode;
};

export default function LayoutWrapper({
  footer,
  children,
}: LayoutWrapperProps) {
  const pathname = usePathname();
  const [isSidebarCollapsed, setIsSidebarCollapsed] = useState(false);

  const hideSidebarRoutes = ["/playnow", "/register"];
  const hideSidebar = hideSidebarRoutes.includes(pathname);

  return (
    <>
      <Suspense fallback={null}>
        <Header
          onToggleSidebar={() => setIsSidebarCollapsed((prev) => !prev)}
          isSidebarCollapsed={isSidebarCollapsed}
        />
      </Suspense>

      <div className={`app-shell ${isSidebarCollapsed ? "sidebar-collapsed" : ""}`}>
        {!hideSidebar && <Sidebar collapsed={isSidebarCollapsed} />}

        <div className="app-shell__mainColumn">
          <main className="main-content app-shell__content">
            {children}
          </main>

          {footer}
        </div>
      </div>

      <SideMobilebar />
    </>
  );
}