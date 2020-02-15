--연습문제

--1
SELECT employee_id, first_name, last_name
FROM employees
WHERE salary = (
    SELECT salary
    FROM employees
    WHERE first_name = 'Bruce'
);
--2
SELECT department_id, MAX(salary)
FROM employees
GROUP BY department_id;

SELECT *
FROM employees
WHERE salary IN (
    SELECT MAX(salary)
    FROM employees
    GROUP BY department_id
);
--3
SELECT *
FROM employees
WHERE (job_id, salary) IN (
    SELECT job_id, MAX(salary)
    FROM employees
    GROUP BY job_id
);
--4
SELECT *
FROM employees A
INNER JOIN (
    SELECT department_id
    FROM departments
    WHERE department_name = 'Marketing'
) B ON A.department_id = B.department_id;
