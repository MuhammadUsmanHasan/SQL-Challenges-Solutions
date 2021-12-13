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
