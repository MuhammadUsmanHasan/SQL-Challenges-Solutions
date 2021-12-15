#Author: Muhammad Usman Hasan
/*Uses limit*/
SELECT SALARY*MONTHS as max_inc, COUNT(*) FROM EMPLOYEE GROUP BY max_inc ORDER BY max_inc desc LIMIT 1;



