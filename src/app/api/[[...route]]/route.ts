import { D1Database } from '@cloudflare/workers-types';
import { Hono } from 'hono'
import { handle } from 'hono/vercel'

export const runtime = 'edge';

// This ensures c.env.DB is correctly typed
type Bindings = {
  PC_DB: D1Database
}

declare global {
    namespace NodeJS {
      interface ProcessEnv {
        PC_DB: D1Database;
      }
    }
  }

const app = new Hono<{ Bindings: Bindings}>().basePath('/api')

// Accessing D1 is via the c.env.YOUR_BINDING property
app.get("/query/characters", async (c) => {
  const limit = parseInt(c.req.query('limit') || '12', 10);
  const offset = parseInt(c.req.query('offset') || '0', 10);
  
  const query = `
    SELECT
      pc.id,
      pc.name,
      pc.name_en,
      pc.rarity,
      pc.transcendence,
      pc.transcendence_illustration_gender_branch,
      pc.element,
      pc.weapon_1,
      pc.weapon_2,
      pc.series_1,
      pc.series_2,
      pc.type,
      pc.race,
      pc.gender,
      pc.max_hp,
      pc.max_atk,
      pc.base_da_probability,
      pc.base_ta_probability,
      pc.multiple_character,
      pc.profile_name,
      pc.profile_age,
      pc.profile_height,
      pc.profile_hobbies,
      pc.profile_likes,
      pc.profile_dislikes,
      pc.profile_voice_actor,
      pc.implementation_date,
      (
        SELECT json_group_array(
          json_object(
            'optional_profile_id', pop.optional_profile_id,
            'optional_profile_name', pop.optional_profile_name,
            'optional_profile_age', pop.optional_profile_age,
            'optional_profile_height', pop.optional_profile_height,
            'optional_profile_hobbies', pop.optional_profile_hobbies,
            'optional_profile_likes', pop.optional_profile_likes,
            'optional_profile_dislikes', pop.optional_profile_dislikes,
            'optional_profile_voice_actor', pop.optional_profile_voice_actor
          )
        )
        FROM playable_character_optional_profile pop
        WHERE pop.playable_character_id = pc.id
      ) as optional_profiles,
      (
        SELECT json_object(
          'ability_1_type', pa.ability_1_type,
          'ability_1_name', pa.ability_1_name,
          'ability_1_description', pa.ability_1_description,
          'ability_1_cooldown', pa.ability_1_cooldown,
          'ability_2_type', pa.ability_2_type,
          'ability_2_name', pa.ability_2_name,
          'ability_2_description', pa.ability_2_description,
          'ability_2_cooldown', pa.ability_2_cooldown,
          'ability_3_type', pa.ability_3_type,
          'ability_3_name', pa.ability_3_name,
          'ability_3_description', pa.ability_3_description,
          'ability_3_cooldown', pa.ability_3_cooldown,
          'ability_4_type', pa.ability_4_type,
          'ability_4_name', pa.ability_4_name,
          'ability_4_description', pa.ability_4_description,
          'ability_4_cooldown', pa.ability_4_cooldown
        )
        FROM playable_character_ability pa
        WHERE pa.playable_character_id = pc.id
      ) as abilities,
      (
        SELECT json_group_array(
          json_object(
            'skin_id', ps.skin_id,
            'skin_name', ps.skin_name
          )
        )
        FROM playable_character_skin ps
        WHERE ps.playable_character_id = pc.id
      ) as skins
    FROM playable_character pc
    LIMIT ${limit} OFFSET ${offset};
  `;

  const countQuery = `SELECT COUNT(*) as totalCount FROM playable_character;`; // 追加: 総数を取得するクエリ

  const [queryResult, countResult] = await Promise.all([
    process.env.PC_DB.prepare(query).all(),
    process.env.PC_DB.prepare(countQuery).first()
  ]);

  const totalCount = countResult ? countResult.totalCount : 0;
  const characters = queryResult.results;

  return c.json({
    count: characters.length,
    totalCount: totalCount,
    characters: characters
  });
});

export const GET = handle(app)