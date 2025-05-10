USE `seschool_02`;

--2_1
SELECT `first_name`, `Last_name`, `balance` FROM `Clients`
	ORDER BY `balance` DESC;

--2_2
SELECT `first_name`, `Last_name`, `balance` FROM `Clients`
	ORDER BY `balance` DESC
	LIMIT 3;

--2_3
SELECT `first_name`, `Last_name`, `balance` FROM `Clients`
	ORDER BY `balance` DESC
	LIMIT 2
	OFFSET 1;

--2_4
SELECT DISTINCT `city` AS `Уникальные города клиентов` FROM `Clients`;

--2_5
SELECT `first_name`, `last_name` FROM `Clients`
	WHERE `balance` > 10000 AND `is_active` IS TRUE;

--2_6
SELECT `first_name`, `last_name` FROM `Clients`
	WHERE `first_name` LIKE 'e%';

--3_1
SELECT `first_name`, `last_name` FROM `Clients`
	WHERE `balance` = 0;

--3_2
SELECT `first_name`, `last_name`, `city` FROM `Clients`
	WHERE `city` != 'Moscow';

--3_3
SELECT `first_name`, `last_name`, `balance` FROM `Clients`
	ORDER BY `is_active` IS TRUE, `balance` DESC;

--3_4
SELECT * FROM `Clients`
	WHERE `city` = 'SaintPetersburg' AND `balance` > 8000 OR
			`city` = 'Novosibirsk' AND `balance` > 8000;

--3_5
SELECT * FROM `Clients`
	ORDER BY `age`
	LIMIT 5;

--3_6
SELECT * FROM `Clients`
	WHERE `age` > 30
	ORDER BY `last_name`;

--3_7
SELECT * FROM `Clients`
	WHERE `balance` < 5000 AND `is_active` IS FALSE
	ORDER BY `age` DESC;

--4_1
SELECT * FROM `Clients`
	WHERE `city` = 'Moscow' AND `is_active` IS TRUE AND `balance` > 5000
	ORDER BY `balance` DESC;

--4_2
SELECT * FROM `Clients`
	WHERE `city` LIKE 'k%' AND `is_active` IS FALSE AND `last_name` LIKE '%a' OR
			`city` LIKE 'p%' AND `is_active` IS FALSE AND `last_name` LIKE '%a';

--4_3
SELECT * FROM `Clients`
	WHERE `balance` > 0 AND 
			`balance` < (SELECT `balance` FROM `Clients` WHERE `id` = 3)
	LIMIT 5;

--4_4
SELECT * FROM `Clients`
	WHERE `is_active` IS FALSE
	ORDER BY `balance` DESC
	LIMIT 1;

--4_5
SELECT * FROM `Clients`
	WHERE `balance` > 1000 AND
			`age` BETWEEN (SELECT `age` FROM `Clients` ORDER BY `age` LIMIT 1) AND
								(SELECT `age` FROM `Clients` ORDER BY `age` LIMIT 1 OFFSET 2);

--4_6
SELECT DISTINCT `city` FROM `Clients`
	WHERE `balance` > 10000;