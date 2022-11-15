-- # Problem: https://www.hackerrank.com/challenges/contest-leaderboard/problem

SELECT
    H.hacker_id,
    H.name,
    SUM(SUBQUERY.max_score) AS total_score
FROM (
    SELECT
        hacker_id,
        challenge_id,
        MAX(score) AS max_score
    FROM SUBMISSIONS AS S
    GROUP BY S.hacker_id, S.challenge_id
) AS SUBQUERY
JOIN HACKERS AS H 
    ON SUBQUERY.hacker_id=H.hacker_id
GROUP BY H.hacker_id, H.name
HAVING total_score > 0
ORDER BY total_score DESC, H.hacker_id;