-- clearing trinkets
delete from `character_inventory` where `item_template`='17905' and `guid` in (select `guid` from `character_reputation` where (`faction`='729' and `standing`<'3000'));
delete from `character_inventory` where `item_template`='17906' and `guid` in (select `guid` from `character_reputation` where (`faction`='729' and `standing`<'9000'));
delete from `character_inventory` where `item_template`='17907' and `guid` in (select `guid` from `character_reputation` where (`faction`='729' and `standing`<'21000'));
delete from `character_inventory` where `item_template`='17908' and `guid` in (select `guid` from `character_reputation` where (`faction`='729' and `standing`<'42000'));
delete from `character_inventory` where `item_template`='17909' and `guid` in (select `guid` from `character_reputation` where (`faction`='729' and `standing`<'42999'));
delete from `character_inventory` where `item_template`='17900' and `guid` in (select `guid` from `character_reputation` where (`faction`='730' and `standing`<'3000'));
delete from `character_inventory` where `item_template`='17901' and `guid` in (select `guid` from `character_reputation` where (`faction`='730' and `standing`<'9000'));
delete from `character_inventory` where `item_template`='17902' and `guid` in (select `guid` from `character_reputation` where (`faction`='730' and `standing`<'21000'));
delete from `character_inventory` where `item_template`='17903' and `guid` in (select `guid` from `character_reputation` where (`faction`='730' and `standing`<'42000'));
delete from `character_inventory` where `item_template`='17904' and `guid` in (select `guid` from `character_reputation` where (`faction`='730' and `standing`<'42999'));
-- clearing invalid items
delete from `item_instance` where (not exists (select `item` from `character_inventory` where `item`=`item_instance`.`guid`)) and (not exists (select `item_guid` from `mail_items` where `item_guid`=`item_instance`.`guid`)) and (not exists (select `item_guid` from `guild_bank_item` where `item_guid`=`item_instance`.`guid`));