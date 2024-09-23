export interface PlayableCharacter {
    id: number;
    name: string;
    name_en: string;
    rarity: string;
    transcendence: boolean;
    transcendence_illustration_gender_branch: boolean;
    element: string;
    weapon_1: string;
    weapon_2: string | null;
    series_1: string;
    series_2: string;
    type: string;
    race: string;
    gender: string;
    max_hp: number;
    max_atk: number;
    base_da_probability: string;
    base_ta_probability: string;
    multiple_character: boolean;
    profile_name: string;
    profile_age: string;
    profile_height: string;
    profile_hobbies: string;
    profile_likes: string;
    profile_dislikes: string;
    profile_voice_actor: string;
    implementation_date: string;
    optional_profiles: OptionalProfile[];
    abilities: Ability;
    skins: Skin[];
  }
  
export interface OptionalProfile {
    optional_profile_id: string;
    optional_profile_name: string;
    optional_profile_age: string;
    optional_profile_height: string;
    optional_profile_hobbies: string;
    optional_profile_likes: string;
    optional_profile_dislikes: string;
    optional_profile_voice_actor: string;
  }
  
export interface Ability {
    ability_1_type: string;
    ability_1_name: string;
    ability_1_description: string;
    ability_1_cooldown: number;
    ability_2_type: string;
    ability_2_name: string;
    ability_2_description: string;
    ability_2_cooldown: number;
    ability_3_type: string;
    ability_3_name: string;
    ability_3_description: string;
    ability_3_cooldown: number;
    ability_4_type: string;
    ability_4_name: string;
    ability_4_description: string;
    ability_4_cooldown: number;
  }
  
export interface Skin {
    skin_id: number;
    skin_name: string;
  }

  export interface PlayableCharacterData {
    count: number;
    characters: PlayableCharacter[];
  }