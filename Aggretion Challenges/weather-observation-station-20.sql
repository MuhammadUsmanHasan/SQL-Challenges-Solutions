#Author: Muhammad Usman Hasan

SELECT ROUND(st.LAT_N,4) FROM STATION st WHERE 
( 
(SELECT COUNT(LAT_N) FROM STATION WHERE LAT_N<st.LAT_N) = 
    (SELECT COUNT(LAT_N) FROM STATION WHERE LAT_N>st.LAT_N)
)


/*
Notes about the question:
1) The question isn't asking for the average, 
2) the solution to this probelm is basically two pointers, 
   where one starts at the top (LAT_N>st.LAT_N) and one starts bottom (LAT_N<st.LAT_N)
   When these two pointers are the same size we know we have found the middle of the LAT_N column
   and that value will be the median.
*/
