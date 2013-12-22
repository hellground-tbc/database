-- fix of spawn position and walking (he can walk to the roof of house) http://www.wowhead.com/npc=7406#comments
UPDATE `creature` SET `position_x`='-14417.674', `position_y`='409.707', `position_z`='22.697', `orientation`='0.906', `spawndist`='1' WHERE (`guid`='387');
UPDATE `creature` SET `MovementType`='0',`spawndist`='0' WHERE (`guid`='387');
