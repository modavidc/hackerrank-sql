-- # Problem: https://www.hackerrank.com/challenges/the-blunder/problem

SELECT CEILING(AVG(SALARY) - AVG(REPLACE(SALARY, '0', ''))) 
FROM EMPLOYEES;