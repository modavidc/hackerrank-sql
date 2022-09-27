-- # Problem: https://www.hackerrank.com/challenges/the-company/problem

SELECT  
    company_code,
    founder,
    (SELECT COUNT(DISTINCT(lead_manager_code)) FROM LEAD_MANAGER as L WHERE L.company_code = C.company_code),
    (SELECT COUNT(DISTINCT(senior_manager_code)) FROM SENIOR_MANAGER as S WHERE S.company_code = C.company_code),
    (SELECT COUNT(DISTINCT(manager_code)) FROM MANAGER as M WHERE M.company_code = C.company_code),
    (SELECT COUNT(DISTINCT(employee_code)) FROM EMPLOYEE as E WHERE E.company_code = C.company_code)
FROM COMPANY as C
ORDER BY C.company_code