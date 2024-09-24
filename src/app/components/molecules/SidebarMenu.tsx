import Link from "next/link";
import React from "react";

export const SidebarMenu = () => {
  return (
    <div className="flex-basis-full relative">
      <div className="absolute inset-0 top-0 left-0 text-sm">
        <div
          className="overflow-scroll overscroll-x-contain"
          style={{ scrollbarWidth: "none" }}
        >
          <div className="min-w-full table">
            <ul className="list-none mt-2 mb-14">
              <li className="min-h-10">
                <Link href="/job">
                  <div className="flex items-center justify-center">
                    <div className="w-14 h-full flex-shrink-0"></div>
                    <span className="hidden flex-grow lg:block">
                      主人公ジョブ一覧（準備中）
                    </span>
                  </div>
                </Link>
              </li>
              <li className="min-h-10">
                <Link href="/character">
                  <div className="flex items-center justify-center">
                    <div className="w-14 h-full flex-shrink-0"></div>
                    <span className="hidden flex-grow lg:block">
                      キャラクター一覧
                    </span>
                  </div>
                </Link>
              </li>
              <li className="min-h-10">
                <Link href="/weapon">
                  <div className="flex items-center justify-center">
                    <div className="w-14 h-full flex-shrink-0"></div>
                    <span className="hidden flex-grow lg:block">
                      武器一覧（準備中）
                    </span>
                  </div>
                </Link>
              </li>
              <li className="min-h-10">
                <Link href="/summon">
                  <div className="flex items-center justify-center">
                    <div className="w-14 h-full flex-shrink-0"></div>
                    <span className="hidden flex-grow lg:block">
                      召喚石一覧（準備中）
                    </span>
                  </div>
                </Link>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  );
};
