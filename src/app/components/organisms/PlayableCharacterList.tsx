"use client";

import { PlayableCharacterItem } from "../molecules/PlayableCharacterItem";
import { useEffect, useState } from "react";
import { useRouter, useSearchParams } from "next/navigation";
import useSWR from "swr";

import {
  PlayableCharacter,
  PlayableCharacterData,
} from "@/interfaces/interface";

const fetcher = (url: string) => fetch(url).then((res) => res.json());

export const PlayableCharacterList = () => {
  const router = useRouter();
  const searchParams = useSearchParams();
  const initialPage = parseInt(searchParams.get("page") || "1", 10) - 1; // ページ番号取得時に-1する
  const [page, setPage] = useState(initialPage);
  const limit = 12; // 1ページあたりの表示数

  // URLページ番号を更新
  useEffect(() => {
    const currentPage = parseInt(searchParams.get("page") || "1", 10) - 1;
    setPage(currentPage);
  }, [searchParams]);

  // ページ番号をURLに反映
  useEffect(() => {
    router.push(`?page=${page + 1}`); // urlのページ番号に+1する
  }, [page, router]);

  // データを取得
  const { data, error } = useSWR<PlayableCharacterData>(
    `/api/query/characters?limit=${limit}&offset=${page * limit}`,
    (url: string) => fetcher(url) as Promise<PlayableCharacterData>
  );

  // エラーハンドリング
  if (error) {
    return <div>データの読み込みに失敗しました。</div>;
  }
  if (!data) {
    return <div>Loading...</div>;
  }

  // データを取得
  const characters = data.characters as PlayableCharacter[];
  const totalPages = Math.ceil(data.totalCount / limit); // 総ページ数を計算
  const isLastPage = characters.length < limit; // 最後のページかどうかを判定

  // ページ番号を更新
  const handlePageChange = (newPage: number) => {
    setPage(newPage);
  };

  // エラーハンドリング
  if (data.characters.length === 0) {
    return <div>キャラクターが見つかりませんでした。</div>;
  }

  return (
    <div>
      <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
        {characters.map((character) => (
          <PlayableCharacterItem key={character.id} character={character} />
        ))}
      </div>
      <div className="flex justify-center mt-4">
        <button onClick={() => handlePageChange(0)} disabled={page === 0}>
          最初のページ
        </button>
        <button
          onClick={() => handlePageChange(page - 1)}
          disabled={page === 0}
        >
          前のページ
        </button>
        {Array.from({ length: totalPages }, (_, index) => (
          <button
            key={index}
            onClick={() => handlePageChange(index)}
            disabled={index === page}
            className={`mx-1 ${index === page ? "font-bold" : ""}`}
          >
            {index + 1}
          </button>
        ))}
        <button
          onClick={() => handlePageChange(page + 1)}
          disabled={isLastPage}
        >
          次のページ
        </button>
        <button
          onClick={() => handlePageChange(totalPages - 1)}
          disabled={isLastPage}
        >
          最後のページ
        </button>
      </div>
    </div>
  );
};
