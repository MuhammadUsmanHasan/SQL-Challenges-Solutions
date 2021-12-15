#Author: Muhammad Usman Hasan
/*Uses limit*/
SELECT SALARY*MONTHS as max_inc, COUNT(*) FROM EMPLOYEE GROUP BY max_inc ORDER BY max_inc desc LIMIT 1;

/* Without the use of Limit remeber NOTE: Aggregate functions can only be used in GROUP BY and SELECT CLAUSE so another select statenment is need to get the right answer*/
SELECT MAX(SALARY*MONTHS), COUNT(SALARY*MONTHS)FROM EMPLOYEE WHERE SALARY*MONTHS IN(SELECT MAX(SALARY*MONTHS) FROM EMPLOYEE);
