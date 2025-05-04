USE seschool_02;

ALTER TABLE `MonstersIncEmployees`
	DROP COLUMN `MonsterColor`,
	ADD COLUMN `ScareLevel` TINYINT UNSIGNED NOT NULL;