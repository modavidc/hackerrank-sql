-- # Problem: https://www.hackerrank.com/challenges/asian-population/problem

SELECT SUM(population)
FROM CITY 
WHERE countrycode IN (
    SELECT code 
    FROM COUNTRY 
    WHERE continent='Asia'
);