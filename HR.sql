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
