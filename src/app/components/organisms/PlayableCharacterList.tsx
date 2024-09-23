"use client";

import useSWR from "swr";

import {
  PlayableCharacter,
  PlayableCharacterData,
} from "@/interfaces/interface";
import { PlayableCharacterItem } from "../molecules/PlayableCharacterItem";
import { useState } from "react";

const fetcher = (url: string) => fetch(url).then((res) => res.json());

export const PlayableCharacterList = () => {
  const [page, setPage] = useState(0);
  const limit = 10;
  const { data, error } = useSWR<PlayableCharacterData>(
    `/api/query/characters?limit=${limit}&offset=${page * limit}`,
    (url: string) => fetcher(url) as Promise<PlayableCharacterData>
  );

  if (error) {
    return <div>データの読み込みに失敗しました。</div>;
  }
  if (!data) {
    return <div>Loading...</div>;
  }

  if (data.characters.length === 0) {
    return <div>キャラクターが見つかりませんでした。</div>;
  }

  console.log("API Response Data:", data); // 追加: APIレスポンスをログに出力

  const characters = data.characters as PlayableCharacter[];

  return (
    <div>
      <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
        {characters.map((character) => (
          <PlayableCharacterItem key={character.id} character={character} />
        ))}
      </div>
      <div>
        <button onClick={() => setPage(page - 1)} disabled={page === 0}>
          前のページ
        </button>
        <button
          onClick={() => setPage(page + 1)}
          disabled={characters.length < limit}
        >
          次のページ
        </button>
      </div>
    </div>
  );
};
