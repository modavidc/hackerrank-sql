-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-2/problem

SELECT 
    CAST(SUM(LAT_N) AS DECIMAL(18,2)), 
    CAST(SUM(long_w) AS DECIMAL(18,2)) 
FROM STATION; 