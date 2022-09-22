USE People;
-- Function 1: UPPER
-- 'UPPER' , is going to upper case all your characters that you pass into it
SELECT UPPER('share');

-- Function 2 : LOWER
-- 'LOWER' , is going to return lower case
SELECT LOWER('SHARE');

-- Function 3: LENGHT
-- 'LENGTH' finds out lenght of a given string
SELECT LENGTH('share');

-- Funtion 4 : LEFT
-- 'LEFT' is used to return a specific number of characters from the left of the string
-- takes in 2 arguments, 1- string, 2- integer which determnins the character upto which it should return
SELECT LEFT('share',3);

-- Function 5 : RIGHT
-- 'RIGHT' used to return a specified number of characters from the right of the string
SELECT RIGHT('share',3);

-- Function 6: SUBSTRING
-- 'SUBSTRING' function extracts a substring of a given string
-- 3 arguments, 1- string, 2- start position, 3- length of string
SELECT SUBSTRING('Share', 2, 3);
SELECT SUBSTRING('Shoot me',5);

-- Function 7 : LTRIM
-- 'LTRIM' FUNCTION removes all spaces to the left of a string
SELECT LTRIM('share   ');

-- Function 8 : RTRIM
-- 'RTRIM' Function removes all spaces to the right of a string
SELECT RTRIM('  share');

-- Function 9 : TRIM
-- 'TRIM' function removes all spaces to the left and rigth of a string
SELECT TRIM('  share  ');

-- Function 10 : LOCATE
-- 'LOCATE' function returns the position of the first occurrence of a substring in a string
-- 2 arguments, 1- string, 2. original string
SELECT LOCATE('S','share');

-- Funtion 11 : REPLACE
-- 'REPLACE' funtion replaces all the occurrences of a substring within a string
-- 3 arg, 1- original string, 2- substring you want to replace, 3- substring to which you want to replace
SELECT REPLACE('share','sh','d');


-- Exercise
-- Fetch id, first_name and lenght of first name from citizen table
-- note that the records are to be sort in descending order according to the length of the first_name
SELECT
id, first_name, LENGTH(first_name) AS first_name_lenght
FROM citizen
ORDER BY first_name_lenght DESC;

-- Q2 fetch id,full name from citizen table using CONCAT
SELECT
id, CONCAT(first_name,'  ', last_name) AS full_name
FROM citizen;

