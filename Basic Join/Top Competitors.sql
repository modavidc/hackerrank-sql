-- # Problem: https://www.hackerrank.com/challenges/full-score/problem

SELECT 
    H.hacker_id, 
    H.name
FROM SUBMISSIONS as S
INNER JOIN HACKERS as H
    ON H.hacker_id = S.hacker_id
INNER JOIN CHALLENGES as C
    ON C.challenge_id = S.challenge_id
INNER JOIN DIFFICULTY as D
    ON D.difficulty_level = C.difficulty_level
WHERE D.score = S.score
GROUP BY H.hacker_id, H.name
HAVING COUNT(S.hacker_id) > 1
ORDER BY COUNT(S.hacker_id) DESC, S.hacker_id ASC; 