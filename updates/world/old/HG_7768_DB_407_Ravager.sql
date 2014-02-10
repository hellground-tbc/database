-- http://www.wowhead.com/item=7717
-- http://www.wowhead.com/spell=36981 spell which i use instead. It works 6 seconds instead of 9,but does 3 hits in total too.
UPDATE `item_template` SET `spellid_1`='36981', `spellppmRate_1`='0.8', `spellcooldown_1`='15000' WHERE (`entry`='7717');