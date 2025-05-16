USE `seschool_02`;

--Task №2_1
SELECT `CharacterName`, `Occupation` FROM `ZootopiaCharacters`;

--Task №2_2
SELECT `CharacterName` FROM `ZootopiaCharacters`
	WHERE `Species` = 'Лиса';
	
--Task №2_3
SELECT `CharacterName` FROM `ZootopiaCharacters`
	WHERE `Species` IN ('Кролик', 'Буйвол');
	
--Task №2_4
SELECT * FROM `ZootopiaCharacters`
	WHERE `Occupation` IS NOT NULL
	ORDER BY `CharacterName` ASC
	LIMIT 3;

--Task №2_5
SELECT * FROM `ZootopiaCharacters`
	GROUP BY `Occupation`
	ORDER BY `Role` DESC;

--Task №2_6
SELECT * FROM `ZootopiaCharacters`
	WHERE `CharacterName` LIKE '%a%'
	ORDER BY `CharacterName` DESC;

--Task №2_7
SELECT DISTINCT `Role` FROM `ZootopiaCharacters`
	ORDER BY `CharacterName` ASC;
	
--Task №2_8
SELECT * FROM `ZootopiaCharacters`
	WHERE `Catchphrase` IS NOT NULL
	ORDER BY `CharacterName` ASC
	LIMIT 5;

--Task №2_9
SELECT * FROM `ZootopiaCharacters`
	WHERE `Species` = 'Кролик'
	ORDER BY `CharacterName` ASC
	LIMIT 1
	OFFSET 2;

--Task №2_10_1
SELECT COUNT(*) AS `Количество персонажей` FROM `ZootopiaCharacters`;

--Task №2_10_2
SELECT `Role`, COUNT(*) AS `Количество персонажей` FROM `ZootopiaCharacters`
	GROUP BY `Role`;

--Task №2_11
SELECT `Occupation`, COUNT(*) AS `Количество персонажей` FROM `ZootopiaCharacters`
	GROUP BY `Occupation`;
	
--Task №2_12
SELECT `Occupation`, COUNT(*) AS `Количество персонажей` FROM `ZootopiaCharacters`
	GROUP BY `Occupation`
	ORDER BY `Количество персонажей` DESC;
	
--Task №2_13
SELECT `Species`, COUNT(*) AS `Количество персонажей` FROM `ZootopiaCharacters`
	WHERE `Role` = 'Главный герой'
	GROUP BY `Species`;

--Task №2_14
SELECT `CharacterName`, `Occupation` FROM `ZootopiaCharacters`
	GROUP BY `Occupation`
	HAVING COUNT(*) = 1;
	
--Task №2_15
SELECT * FROM `ZootopiaCharacters`
	WHERE `Occupation` IS NOT NULL
	ORDER BY `CharacterName` DESC
	LIMIT 5;

--Task №2_16
SELECT * FROM `ZootopiaCharacters`
	GROUP BY `Occupation`
	HAVING COUNT(*) > 1
	ORDER BY `Occupation` ASC;

--Task №2_17
SELECT * FROM `ZootopiaCharacters`
	GROUP BY `Species`
	HAVING `Occupation` IS NULL
	ORDER BY COUNT(*) DESC
	LIMIT 3;