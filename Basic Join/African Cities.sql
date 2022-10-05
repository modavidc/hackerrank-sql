-- # Problem: https://www.hackerrank.com/challenges/african-cities/problem

SELECT name 
FROM CITY 
WHERE countrycode IN (
    SELECT code 
    FROM COUNTRY 
    WHERE continent='Africa'
);