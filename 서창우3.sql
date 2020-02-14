--연습문제

--1
SELECT A.first_name, B.department_name, C.city
FROM employees A
INNER JOIN departments B ON A.department_id = B.department_id
INNER JOIN locations C ON B.location_id = C.location_id;
--2
SELECT *
FROM employees A
LEFT OUTER JOIN departments B ON A.department_id = B.department_id;
--3
SELECT *
FROM employees A
RIGHT OUTER JOIN departments B ON A.department_id = B.department_id;
--4
SELECT *
FROM employees A
FULL OUTER JOIN departments B ON A.department_id = B.department_id;
--5
SELECT A.employee_id, A.first_name, A.manager_id, B.first_name
FROM employees A
INNER JOIN employees B ON A.manager_id = B.employee_id;
--6
SELECT job_id
FROM jobs
UNION
SELECT job_id
FROM employees;
--7
SELECT job_id
FROM jobs
INTERSECT
SELECT job_id
FROM employees;
--8
SELECT job_id
FROM jobs
MINUS
SELECT job_id
FROM employees;