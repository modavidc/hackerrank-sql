-- # Problem: https://www.hackerrank.com/challenges/draw-the-triangle-1/problem

SET @VAR = 21;
SELECT REPEAT('* ', @VAR := @VAR - 1)
FROM information_schema.tables LIMIT 20;