-- # Problem: https://www.hackerrank.com/challenges/occupations/problem

SELECT 
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name END),
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END),
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END),
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END)
FROM
(
    SELECT * FROM (
        SELECT *, ROW_NUMBER () OVER (PARTITION BY Occupation ORDER BY Name) 
        AS OCCUPATIONS_DERIVED
        FROM OCCUPATIONS
    ) AS OC
) AS OCCUPATIONS
GROUP BY OCCUPATIONS_DERIVED