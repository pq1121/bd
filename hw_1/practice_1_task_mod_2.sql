USE seschool_02;

ALTER TABLE `Employees`
	DROP COLUMN `MiddleName`,
	ADD COLUMN `Position` VARCHAR(100) NOT NULL;