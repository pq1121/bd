USE `seschool_02`;

CREATE TABLE `ZootopiaCharacters` (
	`CharacterID` BIGINT(6) AUTO_INCREMENT PRIMARY KEY,
	`CharacterName` VARCHAR(75) UNIQUE NOT NULL,
	`Species` VARCHAR(50),
	`Role` ENUM ('Главный герой', 'Антагонист', 'Второстепенный персонаж') DEFAULT 'Второстепенный персонаж',
	`Occupation` VARCHAR(100),
	`Catchphrase` VARCHAR(255)
);