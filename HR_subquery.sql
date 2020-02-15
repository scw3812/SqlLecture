SELECT *
FROM employees
WHERE salary = (
    SELECT salary
    FROM employees
    WHERE last_name = 'De Haan'
);

SELECT *
FROM employees
WHERE salary IN (
    SELECT salary
    FROM employees
    WHERE last_name = 'Taylor'
);

SELECT *
FROM employees
WHERE salary IN(
    SELECT MIN(salary)
    FROM employees
    GROUP BY department_id
);

SELECT *
FROM employees
WHERE (job_id, salary) IN (
    SELECT job_id, Min(salary)
    FROM employees
    GROUP BY job_id
);

SELECT *
FROM employees A
INNER JOIN (
    SELECT *
    FROM departments
    WHERE department_name = 'IT'
) B ON A.department_id = B.department_id;
