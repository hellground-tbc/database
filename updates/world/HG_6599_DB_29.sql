-- set chests as not consumable

UPDATE gameobject_template 
SET data3 = 0
WHERE entry IN (187021, 186672, 186667, 186648, 185168, 185169, 184849, 184465, 185119);