-- # Problem: https://www.hackerrank.com/challenges/earnings-of-employees/problem

SELECT MAX(MONTHS * SALARY) AS EARNINGS, COUNT(*) FROM EMPLOYEE
GROUP BY MONTHS * SALARY
ORDER BY MONTHS * SALARY DESC
LIMIT 1;