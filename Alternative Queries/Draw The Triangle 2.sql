-- # Problem: https://www.hackerrank.com/challenges/draw-the-triangle-2/problem

SET @VAR = 0;
SELECT REPEAT('* ', @VAR := @VAR + 1)
FROM information_schema.tables LIMIT 20;