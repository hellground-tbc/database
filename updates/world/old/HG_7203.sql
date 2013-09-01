-- weapon model for Sacrolash's Shadow Images
UPDATE creature_template SET equipment_id = 3000 WHERE entry = 25214;
-- Eredar Twins formation
REPLACE INTO creature_formations VALUES
(53687, 53668, 0, 0, 2),
(53687, 53687, 0, 0, 2);