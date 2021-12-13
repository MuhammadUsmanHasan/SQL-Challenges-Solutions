# Author: Muhammad Usman Hasan
SELECT DISTINCT CITY FROM STATION WHERE left(CITY,1)NOT IN ('a','e','i','o','u') OR right(City,1) NOT IN ('a','e','i','o','u');
