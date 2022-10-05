-- # Problem: https://www.hackerrank.com/challenges/harry-potter-and-wands/problem

SELECT W.id, WP.age, W.coins_needed, W.power
FROM WANDS as W
LEFT JOIN WANDS_PROPERTY AS WP ON W.code = WP.code
WHERE WP.is_evil = 0 
AND W.coins_needed = (
    SELECT MIN(W2.coins_needed)
    FROM WANDS as W2
    WHERE W2.code = W.code
    AND W2.power = W.power
)
ORDER BY power DESC, age DESC;