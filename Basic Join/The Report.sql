-- # Problem: https://www.hackerrank.com/challenges/the-report/problem

SELECT IF(GRADE < 8, NULL, NAME), GRADE, MARKS 
FROM STUDENTS
JOIN GRADES 
WHERE MARKS >= MIN_MARK AND MARKS <= MAX_MARK
ORDER BY GRADE DESC, NAME ASC; 