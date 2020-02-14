SELECT *
FROM departments A
INNER JOIN employees B ON A.department_id = B.department_id;

SELECT *
FROM employees A
INNER JOIN departments B ON A.department_id = B.department_id
INNER JOIN locations C ON B.location_id = C.location_id;

SELECT A.employee_id, B.department_name, C.city
FROM employees A
INNER JOIN departments B ON A.department_id = B.department_id
INNER JOIN locations C ON B.location_id = C.location_id;

SELECT *
FROM employees A
LEFT OUTER JOIN departments B ON A.department_id = B.department_id;

SELECT *
FROM employees A
RIGHT OUTER JOIN departments B ON A.department_id = B.department_id;

SELECT *
FROM employees A
FULL OUTER JOIN departments B ON A.department_id = B.department_id;

SELECT A.first_name, A.manager_id, B.employee_id, B.first_name
FROM employees A
LEFT OUTER JOIN employees B ON A.manager_id = B.employee_id;

SELECT department_id
FROM employees
UNION
SELECT department_id
FROM departments;

SELECT department_id
FROM employees
UNION ALL
SELECT department_id
FROM departments;

SELECT department_id
FROM employees
INTERSECT
SELECT department_id
FROM departments;

SELECT department_id
FROM employees
MINUS
SELECT department_id
FROM departments;