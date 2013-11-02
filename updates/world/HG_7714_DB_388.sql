-- fix Underbog Lurker not removing Wild Growth buff (typo)
UPDATE `creature_ai_scripts` SET `action1_param2`='34161' WHERE `id`='1772502';

-- fix emote typo
UPDATE `creature_ai_texts` SET `content_default`='%s\'s strength fades.' WHERE `entry`='-153';
