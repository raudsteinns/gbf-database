export const getDefaultImageUrl = (path: string): string => {
    return `${process.env.NEXT_PUBLIC_IMAGE_URL}${path}`;
};

export const getPlayableCharacterFullImageUrl = (path: string): string => {
    return `${process.env.NEXT_PUBLIC_IMAGE_URL}/assets/img/sp/assets/npc/zoom/${path}`;
}

export const getPlayableCharacterHorizontalImageUrl = (path: string): string => {
    return `${process.env.NEXT_PUBLIC_IMAGE_URL}/assets/img/sp/assets/npc/detail/${path}`;
}

export const getPlayableCharacterPortraitHorizontalImageUrl = (path: string): string => {
    return `${process.env.NEXT_PUBLIC_IMAGE_URL}/assets/img/sp/assets/npc/m/${path}`;
}

export const getPlayableCharacterPortraitVerticalImageUrl = (path: string): string => {
    return `${process.env.NEXT_PUBLIC_IMAGE_URL}/assets/img/sp/assets/npc/f/${path}`;
}

export const getPlayableCharacterPortraitVerticalMiniImageUrl = (path: string): string => {
    return `${process.env.NEXT_PUBLIC_IMAGE_URL}/assets/img/sp/assets/npc/quest/${path}`;
}

export const getPlayableCharacterPortraitSquareImageUrl = (path: string): string => {
    return `${process.env.NEXT_PUBLIC_IMAGE_URL}/assets/img/sp/assets/npc/s/${path}`;
}

export const getSkycompassImageUrl = (path: string): string => {
    return `${process.env.NEXT_PUBLIC_IMAGE_SKYCOMPASS_URL}/assets/customizes/characters/1138x1138/${path}`;
};