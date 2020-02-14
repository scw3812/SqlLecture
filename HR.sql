SELECT LOWER(last_name),
       UPPER(last_name),
       INITCAP(email),
       SUBSTR(job_id, 1, 2),
       REPLACE(job_id, 'ACCOUNT', 'ACCNT'),
       LPAD(first_name, 12, '*'),
       RTRIM(LTRIM(job_id, 'F'), 'T')
FROM employees;

SELECT TRIM('   - space -     ')
FROM DUAL;
--DUAL은 가상의 테이블

--1
SELECT LOWER(department_name),
       UPPER(department_name)
FROM departments;
--2
SELECT SUBSTR(department_name, 1, 5)
FROM departments;
--3
SELECT REPLACE(department_name, 'ing', 'in')
FROM departments;
--4
SELECT RPAD(job_id, 10, '!')
FROM jobs;
--5
SELECT RTRIM(job_title, 't')
FROM jobs;

SELECT ROUND(salary / 30, 0),
       ROUND(salary / 30, 1),
       ROUND(salary / 30, -1)
FROM employees;

SELECT TRUNC(salary / 30, 0),
       TRUNC(salary / 30, 1),
       TRUNC(salary / 30, -1)
FROM employees;

SELECT MOD(15, 2) 나머지,
       CEIL(15.351) 정수올림,
       FLOOR(15.351) 정수내림,
       SIGN(1) 양수음수,
       POWER(2, 3) 거듭제곱,
       SQRT(4) 제곱근
FROM DUAL;

SELECT CEIL(15.351 * 10) / 10
FROM DUAL;

SELECT SYSDATE
FROM DUAL;

SELECT ADD_MONTHS(hire_date, 3),
       ADD_MONTHS(hire_date, -3)
FROM employees
WHERE employee_id BETWEEN 100 AND 106;

SELECT NEXT_DAY(hire_date, '금요일'),
       NEXT_DAY(hire_date, 6)
FROM employees
WHERE employee_id BETWEEN 100 AND 106;

SELECT LAST_DAY(hire_date)
FROM employees
WHERE employee_id BETWEEN 100 AND 106;

SELECT ROUND(hire_date, 'MONTH'),
       ROUND(hire_date, 'YEAR'),
       TRUNC(hire_date, 'MONTH'),
       TRUNC(hire_date, 'YEAR')
FROM employees
WHERE employee_id BETWEEN 100 AND 106;

SELECT salary * NVL(commission_pct, 1)
FROM employees
ORDER BY commission_pct;

SELECT first_name, last_name, department_id, salary, 
       DECODE(department_id, 60, salary * 1.1, salary),
       DECODE(department_id, 60, '10% 인상', '미인상')
FROM employees;

SELECT first_name, last_name, department_id, salary,
       CASE 
            WHEN salary >= 9000 THEN '상위급여'
            WHEN salary BETWEEN 6000 AND 8999 THEN '중위급여'
            ELSE '하위급여'
       END
FROM employees
WHERE job_id = 'IT_PROG';

SELECT salary,
       RANK()OVER(ORDER BY salary DESC) A,
       DENSE_RANK()OVER(ORDER BY salary DESC) B,
       ROW_NUMBER()OVER(ORDER BY salary DESC) C
FROM employees;

SELECT department_id,
       salary,
       RANK()OVER(PARTITION BY department_id ORDER BY salary DESC) A,
       DENSE_RANK()OVER(PARTITION BY department_id ORDER BY salary DESC) B,
       ROW_NUMBER()OVER(PARTITION BY department_id ORDER BY salary DESC) C
FROM employees;

SELECT COUNT(salary),
       SUM(salary),
       SUM(salary) / COUNT(salary),
       ROUND(AVG(salary)),
       MAX(first_name),
       MIN(first_name)
FROM employees;

SELECT job_id,
       SUM(salary),
       AVG(salary)
FROM employees
WHERE employee_id >= 10
GROUP BY job_id
ORDER BY SUM(salary) DESC;

SELECT job_id,
       SUM(salary),
       AVG(salary)
FROM employees
WHERE employee_id >= 10
GROUP BY job_id
HAVING SUM(salary) > 30000
ORDER BY SUM(salary) DESC;
