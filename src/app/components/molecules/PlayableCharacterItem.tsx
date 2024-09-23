import { getPlayableCharacterHorizontalImageUrl } from "@/utils/imageUrl";
import Image from "next/image";

interface PlayableCharacterItemProps {
  character: {
    id: number;
    name: string;
    name_en: string;
    rarity: string;
    element: string;
    weapon_1: string;
    weapon_2: string | null;
    type: string;
    race: string;
    gender: string;
    max_hp: number;
    max_atk: number;
  };
}

export const PlayableCharacterItem = ({
  character,
}: PlayableCharacterItemProps) => {
  return (
    <div key={character.id}>
      <Image
        src={getPlayableCharacterHorizontalImageUrl(`${character.id}_01.png`)}
        alt={character.name}
        className="w-full h-auto"
        width={584}
        height={228}
        priority
      />
      <h2>
        {character.name} ({character.name_en})
      </h2>
      <p>Rarity: {character.rarity}</p>
      <p>Element: {character.element}</p>
      <p>Weapon 1: {character.weapon_1}</p>
      <p>Weapon 2: {character.weapon_2}</p>
      <p>Type: {character.type}</p>
      <p>Race: {character.race}</p>
      <p>Gender: {character.gender}</p>
      <p>Max HP: {character.max_hp}</p>
      <p>Max ATK: {character.max_atk}</p>
    </div>
  );
};
