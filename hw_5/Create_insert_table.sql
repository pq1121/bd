USE `seschool_02`;

CREATE TABLE `Categories` (
	`ID` BIGINT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	`Name` VARCHAR(50) NOT NULL
);

CREATE TABLE `Products` (
	`ID` BIGINT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	`Name` VARCHAR(50) NOT NULL,
	`Price` DECIMAL(10,2) NOT NULL,
	`Category_id` BIGINT(6) UNSIGNED,
	FOREIGN KEY (`Category_id`) REFERENCES `Categories` (`ID`)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
);

INSERT INTO `Categories`(`Name`) VALUES
	('Категория 1'),
	('Категория 2'),
	('Категория 3');

INSERT INTO `Products`(`Name`,`Price`,`Category_id`) VALUES
	('Продукт A', 50.00, 1),
	('Продукт B', 30.00, 1),
	('Продукт C', 20.00, 2),
	('Продукт D', 70.00, 2),
	('Продукт E', 100.00, 3);