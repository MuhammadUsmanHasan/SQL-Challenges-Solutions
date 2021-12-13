# Author: Muhammad Usman Hasan
SELECT IF( A+B<=C OR A+C<=B OR B+C<=A, 'Not A Triangle' ,
            IF(A=B AND B=C,'Equilateral', 
                IF(A=B AND B!=C, 'Isosceles',
                 IF(A=C AND C!=B, 'Isosceles',
                    IF(B=C AND C!=A, 'Isosceles',
                      IF(A!=B!=C, 'Scalene','OTHER')
                      )
                   )
                  )
             )
          )
          FROM TRIANGLES;


--- https://www.w3schools.com/sql/sql_case.asp 
SELECT 
CASE
    WHEN A+B<=C OR A+C<=B OR B+C<=A THEN 'Not A Triangle' 
    WHEN A=B AND B=C THEN 'Equilateral'
    WHEN A=B AND B!=C THEN 'Isosceles'
    WHEN A=C AND C!=B THEN 'Isosceles'
    WHEN B=C AND C!=A THEN 'Isosceles'
    ELSE 'Scalene'
END AS triangles_classification
FROM TRIANGLES;
