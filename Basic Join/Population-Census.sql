#Author: Muhammad Usman Hasan
/*This solution does not use join */
SELECT SUM(Population) from City ci Where ci.CountryCode IN (
SELECT CODE FROM COUNTRY WHERE CONTINENT = 'Asia'
);


/*Solution using Join */
SELECT SUM(C.POPULATION) FROM 
  City C JOIN COUNTRY CO ON C.COUNTRYCODE = CO.CODE 
WHERE CONTINENT ='Asia';
