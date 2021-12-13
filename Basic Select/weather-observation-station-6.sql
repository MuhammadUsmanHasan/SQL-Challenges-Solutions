# Author: Muhammad Usman Hasan
SELECT DISTINCT CITY FROM STATION WHERE 
CITY LIKE 'a%' OR
CITY LIKE'e%' OR
CITY LIKE 'i%' OR
CITY LIKE'o%' OR
CITY LIKE 'u%';


https://www.w3schools.com/sql/func_sqlserver_left.asp
SELECT DISTINCT CITY FROM STATION WHERE left(City,1) in('a','e','i','o','u');
