# Author: Muhammad Usman Hasan
SELECT CONCAT(NAME, '(', LEFT(Occupation,1), ')') as NAMES FROM OCCUPATIONS ORDER BY NAMEs ASC;
SELECT CONCAT ('There are a total of ', COUNT(Occupation), ' ' , LOWER(Occupation), 's.') as total FROM OCCUPATIONS Group by Occupation ORDER by total;
