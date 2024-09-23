import Image from "next/image";
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";

import { getPlayableCharacterHorizontalImageUrl } from "@/utils/imageUrl";

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
    <Card key={character.id}>
      <CardHeader>
        <img
          src={getPlayableCharacterHorizontalImageUrl(`${character.id}_01.png`)}
          alt={character.name}
          className="w-full h-auto"
          width={584}
          height={228}
          loading="lazy"
        />
        <CardTitle>{character.name} </CardTitle>
        <span>{character.name_en}</span>
        <CardDescription></CardDescription>
      </CardHeader>
      <CardContent>
        <p>Rarity: {character.rarity}</p>
        <p>Element: {character.element}</p>
        <p>Weapon 1: {character.weapon_1}</p>
        <p>Weapon 2: {character.weapon_2}</p>
        <p>Type: {character.type}</p>
      </CardContent>
      <CardFooter></CardFooter>
    </Card>
  );
};
