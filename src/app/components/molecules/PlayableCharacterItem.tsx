import Image from "next/image";

import { getPlayableCharacterHorizontalImageUrl } from "@/utils/imageUrl";
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";

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
const typeColorMap: { [key: string]: string } = {
  火: "text-fire border-fire",
  水: "text-water border-water",
  土: "text-earth border-earth",
  風: "text-wind border-wind",
  光: "text-light border-light",
  闇: "text-dark border-dark",
};

export const PlayableCharacterItem = ({
  character,
}: PlayableCharacterItemProps) => {
  const typeColorClass = typeColorMap[character.element];

  return (
    <Card key={character.id} className="rounded-sm">
      <Image
        src={getPlayableCharacterHorizontalImageUrl(`${character.id}_01.png`)}
        alt={character.name}
        className="w-full h-auto"
        width={584}
        height={228}
        priority
      />
      <CardHeader>
        <CardTitle className="has-l-font-size" data-layout="-fluid-typography">
          {character.name}{" "}
        </CardTitle>
        <span
          className="has-xs-font-size leading-none"
          data-layout="-fluid-typography"
        >
          {character.name_en}
        </span>
        <CardDescription></CardDescription>
      </CardHeader>
      <CardContent>
        <p>Rarity: {character.rarity}</p>
        <p
          className={`inline-block leading-none px-2 py-1 rounded-sm mt-2 border border-solid ${typeColorClass}`}
        >
          {character.element}
        </p>
        <p>Weapon 1: {character.weapon_1}</p>
        <p>Weapon 2: {character.weapon_2}</p>
        <p>{character.type}</p>
      </CardContent>
      <CardFooter></CardFooter>
    </Card>
  );
};
