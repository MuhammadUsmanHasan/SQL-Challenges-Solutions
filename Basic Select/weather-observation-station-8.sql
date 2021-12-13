# Author: Muhammad Usman Hasan
SELECT DISTINCT CITY FROM STATION WHERE Left(City,1)  in('a','e','i','o','u') AND
Right(City,1) in('a','e','i','o','u');


