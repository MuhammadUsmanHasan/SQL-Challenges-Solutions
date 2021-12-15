#Auhtor: Muhammad Usman Hasan
SELECT CEILING(AVG(SALARY) - AVG(REPLACE(SALARY,0,''))) FROM EMPLOYEES;
/*

Round: https://www.w3schools.com/sql/func_sqlserver_round.asp
Ceiling: https://www.w3schools.com/sql/func_sqlserver_ceiling.asp
Floor: https://www.w3schools.com/sql/func_sqlserver_floor.asp
*/
