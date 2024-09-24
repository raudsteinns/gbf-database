import React from "react";
import { SidebarMenu } from "../molecules/SidebarMenu";

export const Sidebar = () => {
  return (
    <aside className="hidden w-64 shrink-0 md:block md:fixed md:w-14 lg:w-64">
      <div className="h-full">
        <nav
          aria-expanded="true"
          aria-label="サイドバーナビゲーション"
          className="flex-col justify-between h-full"
        >
          <header></header>
          <SidebarMenu />
          <footer></footer>
        </nav>
      </div>
    </aside>
  );
};
