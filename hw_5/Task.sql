USE `seschool_02`;

--Task 1
SELECT * FROM `Products`
	WHERE `Price` > (SELECT AVG(`Price`) FROM `Products`);
	
--Task 2
SELECT `Categories`.`Name` FROM `Products`
	INNER JOIN `Categories` ON `Products`.`Category_id` = `Categories`.`ID`
	WHERE `Products`.`Price` > 100
	GROUP BY `Categories`.`ID`;

--Task 3
SELECT `Products`.`Name`, `Temp`.`Count_in_Category` FROM `Products`
	INNER JOIN (SELECT COUNT(*) AS `Count_in_Category`, `Category_id` FROM `Products`
	GROUP BY `Category_id`) AS `Temp` ON `Products`.`Category_id` = `Temp`.`Category_id`;

--Task 4
SELECT `Name` FROM `Products`
	INNER JOIN (SELECT AVG(`Price`) AS `Price`, `Category_id` FROM `Products`
	GROUP BY `Category_id`) AS `Temp` ON `Products`.`Category_id` = `Temp`.`Category_id`
	WHERE `Products`.`Price` > `Temp`.`Price`;

--Task 5
SELECT `Categories`.`Name` FROM `Categories`
	INNER JOIN (SELECT AVG(`Price`) AS `Price`, `Category_id` FROM `Products`
	GROUP BY `Category_id`) AS `Temp` ON `Categories`.`ID` = `Temp`.`Category_id`
	WHERE (SELECT AVG(`Price`) FROM `Products`) < `Temp`.`Price`;

--Task 6
SELECT `Categories`.`Name`, `Temp`.`Max_Price` FROM `Categories`
	INNER JOIN (SELECT MAX(`Price`) AS `Max_Price`, `Category_id` FROM `Products`
	GROUP BY `Category_id`) AS `Temp` ON `Categories`.`ID` = `Temp`.`Category_id`;

--Task 7
SELECT `Products`.`Name` FROM `Products`
	INNER JOIN (SELECT MAX(`Price`) AS `Max_Price`, `Category_id` FROM `Products`
	GROUP BY `Category_id`) AS `Temp` ON `Products`.`Category_id` = `Temp`.`Category_id`
	WHERE `Products`.`Price` = `Temp`.`Max_price`;

--Task 18
SELECT `Categories`.`Name` FROM `Products`
	INNER JOIN `Categories` ON `Products`.`Category_id` = `Categories`.`ID`
	GROUP BY `Category_id`
	HAVING AVG(`Price`) > 150;

--Task 19
SELECT `Products`.`Name` FROM `Products`
	INNER JOIN (SELECT MIN(`Price`) AS `Min_Price`, `Category_id` FROM `Products`
	GROUP BY `Category_id`) AS `Temp` ON `Products`.`Category_id` = `Temp`.`Category_id`
	WHERE `Products`.`Price` < `Temp`.`Min_price` * 2;