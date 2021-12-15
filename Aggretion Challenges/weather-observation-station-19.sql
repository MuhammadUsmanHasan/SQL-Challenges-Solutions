#Author: Muhammad Usman Hasan
SELECT ROUND(SQRT( Power( MIN(LAT_N) - MAX(LAT_N),2) + 
             Power(MIN(LONG_W) - MAX(LONG_W),2)
           ),4)
FROM STATION;
