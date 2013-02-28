-- set chest (Cache of the Firelord) as not consumable

UPDATE gameobject_template 
SET data3 = 0
WHERE entry IN (179703);