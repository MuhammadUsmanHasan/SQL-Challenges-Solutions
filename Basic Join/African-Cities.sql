#Author: Muhammad Usman Hasan
SELECT C.NAME FROM City C JOIN COUNTRY CO ON C.CountryCode  = CO.Code 
WHERE CO.CONTINENT = 'Africa';
