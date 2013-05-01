-- FS#372 ; FS#378 partial.
update creature_questrelation set id=14832 where quest=7939;
update quest_template set specialflags=1 where entry=7838;