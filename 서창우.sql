--연습문제

--1
SELECT * FROM departments;
--2
SELECT department_id, department_name
FROM departments;
--3
SELECT department_id, department_name
FROM departments
ORDER BY department_id;
--4
SELECT DISTINCT location_id
FROM departments;
--5
SELECT department_id 부서번호,
       department_name 부서이름
FROM departments;
--6
SELECT country_id || ' is ' || country_name
FROM countries;
--7
SELECT job_id 직무아이디,
       job_title 직무명,
       min_salary * 2 최소급여,
       max_salary * 10 최대급여
FROM jobs;
--8
SELECT *
FROM departments
WHERE department_id = 20;
--9
SELECT *
FROM departments
WHERE department_name = 'IT';
--10
SELECT *
FROM jobs
WHERE max_salary >= 20000;
--11
SELECT *
FROM jobs
WHERE min_salary BETWEEN 10000 AND 20000;
--12
SELECT *
FROM jobs
WHERE max_salary IN (5000, 6000, 9000);
--13
SELECT *
FROM jobs
WHERE job_title LIKE '%Manager%';
--14
SELECT *
FROM jobs
WHERE job_id LIKE '%SA____';
--15
SELECT *
FROM departments
WHERE manager_id IS NOT NULL;
--16
SELECT *
FROM departments
WHERE location_id = 1700 AND department_id <= 100;