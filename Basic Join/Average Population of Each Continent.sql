-- # Problem: https://www.hackerrank.com/challenges/average-population-of-each-continent/problem

SELECT 
    COUNTRY.continent, 
    FLOOR(AVG(CITY.population)) 
FROM CITY 
INNER JOIN COUNTRY 
    ON CITY.countrycode=COUNTRY.code 
GROUP BY COUNTRY.continent;