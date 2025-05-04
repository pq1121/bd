USE seschool_02;

CREATE TABLE `MonstersIncEmployees` (
	`EmployeeID` BIGINT(8) UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
	`MonsterName` VARCHAR(75) NOT NULL,
	`Type` ENUM('Монстр','Помощник','Администратор','Уборщик','Учитель') NOT NULL DEFAULT 'Монстр',
	`Department` VARCHAR(100) NOT NULL DEFAULT 'Нулевой отдел',
	`MonsterColor` VARCHAR(50)
)