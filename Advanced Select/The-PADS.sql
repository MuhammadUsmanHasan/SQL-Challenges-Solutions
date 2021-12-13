# Author: Muhammad Usman Hasan
SELECT  CONCAT(NAME ,CONCAT ( CONCAT ( '(' ,Left(Occupation,1)) , ')')) FROM OCCUPATIONS ORDER BY NAME ASC;
SELECT  CONCAT (CONCAT ( 'There are a total of ' , COUNT(Occupation)  ),  CONCAT(' ', LOWER(Occupation), 's.')) FROM OCCUPATIONS Group by Occupation Order by COUNT(Occupation);
