-- # Problem: https://www.hackerrank.com/challenges/challenges/problem

SELECT H.hacker_id, H.name, COUNT(C.hacker_id) AS challenge_count
FROM CHALLENGES as C
INNER JOIN HACKERS as H ON H.hacker_id = C.hacker_id
GROUP BY H.hacker_id, H.name
HAVING challenge_count NOT IN (
   SELECT DISTINCT(COUNT(C2.hacker_id)) as challenge_count_2
    FROM CHALLENGES C2
    WHERE C2.hacker_id <> H.hacker_id
    GROUP BY C2.hacker_id
    HAVING challenge_count_2 < (
        SELECT COUNT(C3.hacker_id) AS challenge_count_3
        FROM CHALLENGES AS C3
        GROUP BY C3.hacker_id
        ORDER BY challenge_count_3 DESC 
        LIMIT 1
    )
)
ORDER BY challenge_count DESC, H.hacker_id ASC;