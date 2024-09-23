PRAGMA defer_foreign_keys=TRUE;
CREATE TABLE IF NOT EXISTS "playable_character" (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  name_en TEXT NOT NULL,
  rarity TEXT CHECK(rarity IN ('R', 'SR', 'SSR')) NOT NULL,
  transcendence BOOLEAN NOT NULL DEFAULT false,
  final_transcendence BOOLEAN NOT NULL DEFAULT false,
  transcendence_illustration_gender_branch BOOLEAN NOT NULL DEFAULT false,
  final_transcendence_illustration_gender_branch BOOLEAN NOT NULL DEFAULT false,
  element TEXT CHECK(element IN ('火', '水', '土', '風', '光', '闇')) NOT NULL,
  weapon1 TEXT CHECK(weapon1 IN ('剣', '短剣', '槍', '斧', '杖', '銃', '格闘', '弓', '楽器', '刀')) NOT NULL,
  weapon2 TEXT CHECK(weapon2 IN ('剣', '短剣', '槍', '斧', '杖', '銃', '格闘', '弓', '楽器', '刀', NULL)),
  series1 TEXT,
  series2 TEXT,
  type TEXT CHECK(type IN ('バランス', '攻撃', '防御', '回復', '特殊')) NOT NULL,
  race TEXT CHECK(race IN ('ヒューマン', 'エルーン', 'ドラフ', 'ハーヴィン', '星晶獣', 'その他')) NOT NULL,
  gender TEXT CHECK(gender IN ('男', '女', '不詳')) NOT NULL,
  ability_1_type TEXT CHECK(ability_1_type IN ('攻撃', '強化', '弱体', '回復', 'フィールド')),
  ability_2_type TEXT CHECK(ability_2_type IN ('攻撃', '強化', '弱体', '回復', 'フィールド')),
  ability_3_type TEXT CHECK(ability_3_type IN ('攻撃', '強化', '弱体', '回復', 'フィールド')),
  ability_4_type TEXT CHECK(ability_4_type IN ('攻撃', '強化', '弱体', '回復', 'フィールド')),
  max_hp INTEGER NOT NULL DEFAULT 0,
  max_atk INTEGER NOT NULL DEFAULT 0,
  base_da_probability TEXT NOT NULL DEFAULT '',
  base_ta_probability TEXT NOT NULL DEFAULT '',
  multiple_character BOOLEAN NOT NULL DEFAULT false,
  profile_name TEXT,
  profile_age TEXT NOT NULL DEFAULT '',
  profile_height TEXT NOT NULL DEFAULT '',
  profile_hobbies TEXT NOT NULL DEFAULT '',
  profile_likes TEXT NOT NULL DEFAULT '',
  profile_dislikes TEXT NOT NULL DEFAULT '',
  profile_voice_actor TEXT NOT NULL DEFAULT '',
  optional1_profile_name TEXT,
  optional1_profile_age TEXT,
  optional1_profile_height TEXT,
  optional1_profile_hobbies TEXT,
  optional1_profile_likes TEXT,
  optional1_profile_dislikes TEXT,
  optional1_profile_voice_actor TEXT,
  optional2_profile_name TEXT,
  optional2_profile_age TEXT,
  optional2_profile_height TEXT,
  optional2_profile_hobbies TEXT,
  optional2_profile_likes TEXT,
  optional2_profile_dislikes TEXT,
  optional2_profile_voice_actor TEXT,
  optional3_profile_name TEXT,
  optional3_profile_age TEXT,
  optional3_profile_height TEXT,
  optional3_profile_hobbies TEXT,
  optional3_profile_likes TEXT,
  optional3_profile_dislikes TEXT,
  optional3_profile_voice_actor TEXT,
  optional4_profile_name TEXT,
  optional4_profile_age TEXT,
  optional4_profile_height TEXT,
  optional4_profile_hobbies TEXT,
  optional4_profile_likes TEXT,
  optional4_profile_dislikes TEXT,
  optional4_profile_voice_actor TEXT,
  implementation_date DATE NOT NULL
);
INSERT INTO playable_character VALUES(3020000000,'ライアン','Ryan','R',0,0,0,0,'火','斧',NULL,NULL,NULL,'攻撃','ヒューマン','男','強化','攻撃','攻撃',NULL,560,4800,'5','10',0,NULL,'27歳','180cm','妹との文通、手芸（ただし不器用）','可愛いもの、妹、小動物','不機嫌な妹、妹の説教','浅沼晋太郎',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140310);
INSERT INTO playable_character VALUES(3020001000,'ヘリヤ','Herja','R',0,0,0,0,'土','剣',NULL,NULL,NULL,'バランス','ヒューマン','女','強化','攻撃',NULL,NULL,840,3800,'7','3',0,NULL,'23歳','163cm','トレーニング','武具（特に剣）','貝（ただし嫌な顔せず黙って食べる）','寿美菜子',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140310);
INSERT INTO playable_character VALUES(3020002000,'エシオ','Eso','R',0,0,0,0,'風','斧',NULL,NULL,NULL,'攻撃','ヒューマン','男','攻撃','強化',NULL,NULL,620,4900,'10','5',0,NULL,'20歳','187cm','雲の動きを眺める','果物全般','暗い場所、狭い場所、高い場所','楠大典',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140310);
INSERT INTO playable_character VALUES(3020004000,'ガラドア','Galadar','R',0,0,0,0,'土','斧',NULL,NULL,NULL,'防御','ドラフ','男','強化','強化',NULL,NULL,1000,3800,'4','1',0,NULL,'45歳','208cm','小物作り、編み物','手芸全般','角を触られること','廣田行生',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140310);
INSERT INTO playable_character VALUES(3020005000,'デリフォード','Deliford','R',0,0,0,0,'水','槍',NULL,NULL,NULL,'防御','ヒューマン','男','強化','攻撃',NULL,NULL,960,3600,'7','3',0,NULL,'37歳','180cm','日記、貯金','漬け物','最近の若者、夢想家','三宅健太',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140310);
INSERT INTO playable_character VALUES(3020006000,'ファラ','Farrah','R',0,0,0,0,'土','剣',NULL,NULL,NULL,'バランス','ヒューマン','女','強化','攻撃',NULL,NULL,816,3920,'7','3',0,NULL,'15歳','151cm（自己申告）','虫捕り、走ること','先輩（カタリナ）','座学、ジッとしていること','伊瀬茉莉也',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140310);
INSERT INTO playable_character VALUES(3020007000,'ボレミア','Volenna','R',0,0,0,0,'土','剣',NULL,NULL,NULL,'防御','ヒューマン','女','強化','強化',NULL,NULL,880,3600,'7','3',0,NULL,'26歳','168cm','パズル','人の世話を焼くこと （自覚はない）','笑うこと','嶋村侑',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140310);
INSERT INTO playable_character VALUES(3020008000,'アンナ','Anna','R',0,0,0,0,'火','杖',NULL,NULL,NULL,'攻撃','ヒューマン','女','攻撃','強化','攻撃',NULL,640,4800,'10','5',0,NULL,'16歳','151cm','カシマールとのお喋り','猫、きのこ','他人、日の光','いのくちゆか',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140310);
INSERT INTO playable_character VALUES(3020009000,'ヘイゼン','Hazen','R',0,0,0,0,'風','杖','格闘',NULL,NULL,'防御','ヒューマン','男','回復','強化',NULL,NULL,800,3200,'4','1',0,NULL,'41歳','193cm','家庭菜園','ハーブティーとサンドイッチ','駆け引き','浜田賢二',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140310);
INSERT INTO playable_character VALUES(3020010000,'ウィル','Will','R',0,0,0,0,'闇','剣','杖',NULL,NULL,'特殊','ヒューマン','男','攻撃','弱体',NULL,NULL,768,4200,'7','3',0,NULL,'23歳','168cm','魔物研究、罪人を裁くこと','魔物','時間にルーズな奴、清潔感の無い奴','岸尾だいすけ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140310);
INSERT INTO playable_character VALUES(3020011000,'ペトラ','Petra','R',0,0,0,0,'風','杖',NULL,NULL,NULL,'回復','ヒューマン','女','回復','攻撃',NULL,NULL,880,3200,'4','1',0,NULL,'18歳','158cm','草笛','自然','人工物','桑島法子',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140310);
INSERT INTO playable_character VALUES(3020012000,'ジャスミン','Jasmine','R',0,0,0,0,'土','槍',NULL,NULL,NULL,'回復','ヒューマン','女','回復','強化',NULL,NULL,840,3000,'4','1',0,NULL,'16歳','151cm','小鳥さんとのお歌','ドングリ、森の動物たち','人工的な味がするもの','後藤沙緒里',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140310);
INSERT INTO playable_character VALUES(3020013000,'ウェルダー','Walder','R',0,0,0,0,'土','短剣',NULL,NULL,NULL,'バランス','ヒューマン','男','強化','攻撃',NULL,NULL,800,4000,'10','5',0,NULL,'18歳','172cm','風景画を描くこと','森林、森の動物達','人ごみ、大きな街','山口勝平',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140310);
INSERT INTO playable_character VALUES(3020014000,'リチャード','Richard','R',0,0,0,0,'水','銃',NULL,NULL,NULL,'特殊','ヒューマン','男','強化','強化',NULL,NULL,760,4240,'7','3',0,NULL,'32歳','176cm','ギャンブル','作詞作曲','犬','木村良平',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140331);
INSERT INTO playable_character VALUES(3020015000,'ターニャ','Tanya','R',0,0,0,0,'闇','短剣',NULL,NULL,NULL,'バランス','ヒューマン','女','強化','強化',NULL,NULL,830,3840,'7','3',0,NULL,'21歳','171cm','ナイフ磨き','父親、父親の形見のナイフ','会話を長続きさせること（苦手だが人と話すこと自体は好き）','諏訪彩花',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140831);
INSERT INTO playable_character VALUES(3020016000,'マリー','Mary','R',0,0,0,0,'火','銃',NULL,NULL,NULL,'バランス','ヒューマン','女','攻撃','攻撃',NULL,NULL,800,4000,'7','3',0,NULL,'15歳','158cm','占い全般','遺跡巡り','節足動物','長谷川明子',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140310);
INSERT INTO playable_character VALUES(3020017000,'ゼヘク','Zehek','R',0,0,0,0,'闇','短剣',NULL,NULL,NULL,'攻撃','ヒューマン','男','攻撃','攻撃',NULL,NULL,650,4720,'10','5',0,NULL,'18歳','160cm','写経','野菜','肉','KENN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140310);
INSERT INTO playable_character VALUES(3020018000,'ロザミア','Rosamia','R',0,0,0,0,'光','剣',NULL,NULL,NULL,'バランス','ヒューマン','女','攻撃','強化','強化',NULL,840,3800,'7','3',0,NULL,'19歳','167cm','ちぎり絵','狭い所','人ごみ','石川由依',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140310);
INSERT INTO playable_character VALUES(3020019000,'スタン','Stan','R',0,0,0,0,'風','剣',NULL,NULL,NULL,'攻撃','エルーン','男','攻撃','攻撃',NULL,NULL,640,4320,'10','5',0,NULL,'17歳','175cm （耳含む）','料理','自然','努力、権力','増田俊樹',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140430);
INSERT INTO playable_character VALUES(3020020000,'フェザー','Feather','R',0,0,0,0,'光','格闘',NULL,NULL,NULL,'攻撃','ヒューマン','男','攻撃','強化',NULL,NULL,640,4500,'10','5',0,NULL,'18歳','167cm','筋トレ、ランニング','肉、拳と拳の語り合い、喧嘩、強敵（とも）','煩雑な手続き、話し合い','斉藤壮馬',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140622);
INSERT INTO playable_character VALUES(3020021000,'アンナ','Anna','R',0,0,0,0,'火','杖',NULL,'水着',NULL,'攻撃','ヒューマン','女','攻撃','強化',NULL,NULL,620,4900,'10','5',0,NULL,'16歳','151cm','カシマールとのお喋り','猫、きのこ','他人、日の光','いのくちゆか',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140716);
INSERT INTO playable_character VALUES(3020022000,'ウェルダー','Walder','R',0,0,0,0,'土','短剣',NULL,'水着',NULL,'バランス','ヒューマン','男','強化','攻撃',NULL,NULL,720,4400,'10','5',0,NULL,'18歳','172cm','風景画を描くこと','森林、森の動物達','人ごみ、大きな街','山口勝平',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140731);
INSERT INTO playable_character VALUES(3020023000,'マリー','Mary','R',0,0,0,0,'火','銃',NULL,'水着',NULL,'バランス','ヒューマン','女','攻撃','攻撃',NULL,NULL,770,4160,'7','3',0,NULL,'15歳','158cm','占い全般','遺跡巡り','節足動物','長谷川明子',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140814);
INSERT INTO playable_character VALUES(3020024000,'ダエッタ','Daetta','R',0,0,0,0,'光','斧',NULL,NULL,NULL,'攻撃','ドラフ','女','攻撃','弱体',NULL,NULL,700,5280,'5','2',0,NULL,'16歳','137cm','顔なじみの洋服店で買い物','お祖母ちゃん、限定品、服装をほめてくれる人','知らない人、デリカシーのない人','小岩井ことり',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20140912);
INSERT INTO playable_character VALUES(3020025000,'エルメラウラ','Elmelaura','R',0,0,0,0,'火','斧',NULL,NULL,NULL,'特殊','ハーヴィン','女','回復','攻撃',NULL,NULL,580,4200,'7','3',0,NULL,'22歳','89cm','包丁を研ぐこと','料理、食事','不潔な環境','ニーコ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20141031);
INSERT INTO playable_character VALUES(3020026000,'レオノーラ','Leonora','R',0,0,0,0,'風','短剣',NULL,NULL,NULL,'バランス','ハーヴィン','女','攻撃','強化',NULL,NULL,720,4200,'7','3',0,NULL,'15歳','82cm','名乗り口上の研究','相棒のジロキチ、義理人情','人を疑うこと','原涼子',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20141114);
INSERT INTO playable_character VALUES(3020027000,'ガルマ','Garma','R',0,0,0,0,'土','銃',NULL,NULL,NULL,'バランス','ドラフ','男','攻撃','強化',NULL,NULL,840,4580,'5','2',0,NULL,'37歳','213cm','武器の手入れ、装備の確認','特になし','特になし','高橋英則',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20141130);
INSERT INTO playable_character VALUES(3020028000,'ウェルダー','Walder','R',0,0,0,0,'土','短剣',NULL,'クリスマス',NULL,'バランス','ヒューマン','男','強化','攻撃',NULL,NULL,720,4400,'10','5',0,NULL,'18歳','172cm','風景画を描くこと','森林、森の動物達','人ごみ、大きな街','山口勝平',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20141216);
INSERT INTO playable_character VALUES(3020029000,'スフラマール','Suframare','R',0,0,0,0,'水','杖',NULL,NULL,NULL,'回復','ハーヴィン','女','回復','攻撃','回復',NULL,800,3360,'4','1',0,NULL,'22歳','88cm','雪だるま作り','前向きな挑戦','否定的な人','田中真奈美',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20141231);
INSERT INTO playable_character VALUES(3020029001,'ヨダルラーハ','Yodarha','R',0,0,0,0,'水','剣','刀',NULL,NULL,'バランス','ハーヴィン','男','攻撃','弱体',NULL,NULL,640,4290,'7','3',0,NULL,'66歳','94cm','投げ釣り','若者との触れ合い','自分の過去を語ること','千葉繁',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20150122);
INSERT INTO playable_character VALUES(3020031000,'ローアイン','Lowain','R',0,0,0,0,'闇','短剣',NULL,NULL,NULL,'攻撃','エルーン','男','強化','攻撃',NULL,NULL,580,4320,'4','1',1,'ローアイン','22歳','176cm','アルバイト','ダチと一緒にいること、キャタリナさん！（どんだけ一緒にいても相変わらずマブい）','貯金、節約、ローアインのばあちゃんがマジギレした時の顔（マジ洒落にならないくらいバビる）','白石稔','エルセム','22歳','174cm','イケ髪（自分的にイケてる髪型）の研究','ダチと一緒にいること、お洒落、お花の世話とかが好きな優しい心を持ってて笑顔がキャワたんな女の子','貯金、節約、様々な方面の力加減','石井マーク','トモイ','22歳','177cm','エルステ帝国軍が使う用語の勉強','ダチと一緒にいること、眼鏡の女の子（外してても好きだけど笑）','貯金、節約、海辺の女の子（めっちゃ緊張する）','榎木淳弥',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20150131);
INSERT INTO playable_character VALUES(3020032000,'クムユ','Camieux','R',0,0,0,0,'火','銃',NULL,NULL,NULL,'特殊','ドラフ','女','強化','攻撃',NULL,NULL,0,0,'5','2',0,'','','','','','','久野美咲',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20150228);
INSERT INTO playable_character VALUES(3020033000,'ノルセル','Norcel','R',0,0,0,0,'土','杖',NULL,NULL,NULL,'特殊','ハーヴィン','男','攻撃','強化',NULL,NULL,0,0,'7','3',0,'','','','','','','佐々木日菜子',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20150317);
INSERT INTO playable_character VALUES(3020034000,'バロワ','Barawa','R',0,0,0,0,'火','銃',NULL,NULL,NULL,'攻撃','ドラフ','男','強化','攻撃',NULL,NULL,0,0,'5','2',0,'','','','','','','武内駿輔',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20150331);
INSERT INTO playable_character VALUES(3020035000,'クルーニ','Krugne','R',0,0,0,0,'風','剣',NULL,NULL,NULL,'特殊','エルーン','男','弱体','弱体',NULL,NULL,0,0,'10','5',0,'','','','','','','鈴木裕斗',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20150416);
