USE seschool_02;

--1
SELECT `Name` AS `список всех студенток` FROM `students_table`
	WHERE `Gender` = 'ж';

--2
SELECT `Name` AS `список всех студентов 3 курса` FROM `students_table`
	WHERE `Course` = '3';

--3
SELECT `Name` AS `список всех студентов, родившихся позже 3 февраля 1994 года` FROM `students_table`
	WHERE `DateofBirth` > '1994-02-03';
	
--4
SELECT `Name` AS `список всех студентов, имеющих средний балл не ниже 70 и не выше 85` FROM `students_table`
	WHERE `GPA` > 70 AND `GPA` < 85;
	
--4
SELECT `Name` AS `список всех студентов, имеющих средний балл не ниже 70 и не выше 85` FROM `students_table`
	WHERE `GPA` BETWEEN 70 AND 85;
	
--5
SELECT `Name` AS `список всех студентов второго и третьего курса` FROM `students_table`
	WHERE `Course` = '2' OR `Course` = '3';

--5
SELECT `Name` AS `список всех студентов второго и третьего курса` FROM `students_table`
	WHERE `Course` IN ('2', '3');

--6
SELECT `Name` AS `список всех студентов с фамилиями, начинающимися на буквы «С» или «К»` FROM `students_table`
	WHERE `Name` LIKE 'с%' OR `Name` LIKE 'к%';
	
--7
SELECT `Name` AS `список всех студенток из групп АУС` FROM `students_table`
	WHERE `Gender` = 'ж' AND `Group` LIKE 'АУС%';
	
--8
SELECT `Name` AS `список всех студентов, не имеющих хобби` FROM `students_table`
	WHERE `Hobby` = '-';

--9
SELECT DISTINCT `Course` AS `список всех номеров курсов, на которых учатся студенты` FROM `students_table`;

--10
SELECT `Name` AS `список из 5 студентов, имеющих наибольшие баллы, в порядке возрастания баллов`, `GPA` FROM `students_table`
	ORDER BY `GPA`
	LIMIT 5
	OFFSET 10;

--11
SELECT `Name` AS `список из 10 студентов, имеющих наименьшие баллы`, `GPA` FROM `students_table`
	ORDER BY `GPA` DESC, `Name`
	LIMIT 10
	OFFSET 5;

--12
USE `seschool_02`;

SELECT 
	COUNT(`StudentID`) AS `число всех студентов`,
	COUNT(*) - COUNT(`Hobby`) AS `число всех студентов, не имеющих хобби`,
	ROUND(MAX(`GPA`), 1) AS `максимальное значение среднего балла`,
	ROUND(MIN(`GPA`), 1) AS `минимальное значение среднего балла`,
	ROUND(AVG(`GPA`), 1) AS `среднее по всем студентам значение среднего балла`
FROM `students_table`;

--13
SELECT `Course` AS `Курс`, COUNT(*) AS `число студентов` FROM `students_table`
	GROUP BY `Course`;
	
--14
SELECT `Gender` AS `Пол`, ROUND(AVG(`GPA`), 1) AS `средние баллы студентов и студенток` FROM `students_table`
	GROUP BY `Gender`;

--15
SELECT
	ROUND(MAX(`GPA`), 1) AS `максимальный балл среди студентов третьего курса, рожденных не ранее 1993 года`
FROM `students_table`
	WHERE `DateofBirth` > '1993-00-00' AND `Course` = '3';

--16
SELECT `Name`, `GPA`,
	CASE
		WHEN `GPA` BETWEEN 90 AND 100 THEN 'Отлично'
		WHEN `GPA` BETWEEN 75 AND 89 THEN 'Хорошо'
		WHEN `GPA` BETWEEN 60 AND 74 THEN 'Удовлетворительно'
		ELSE 'Неудовлетворительно'
	END AS `оценка по пятибалльной системе`
FROM `students_table`;