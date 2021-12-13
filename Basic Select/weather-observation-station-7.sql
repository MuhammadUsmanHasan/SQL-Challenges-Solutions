# Author: Muhammad Usman Hasan
SELECT DISTINCT CITY FROM STATION WHERE 
CITY LIKE '%q' OR
CITY LIKE'%e' OR
CITY LIKE '%i' OR
CITY LIKE'%o' OR
CITY LIKE '%u';


https://www.w3schools.com/sql/func_sqlserver_right.asp
SELECT DISTINCT CITY FROM STATION WHERE Right(City,1) in('a','e','i','o','u');
