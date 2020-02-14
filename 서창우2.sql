--��������

--1
SELECT LOWER(department_name), UPPER(department_name)
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
--6
SELECT ROUND(3.1415), CEIL(3.1415 * 1000) / 1000
FROM DUAL;
--7
SELECT SYSDATE
FROM DUAL;
--8
SELECT NEXT_DAY(SYSDATE, '�����'), NEXT_DAY(SYSDATE, 7)
FROM DUAL;
--9
SELECT TO_CHAR(SYSDATE, 'YYYY') || '�� ' ||
       TO_CHAR(SYSDATE, 'MONTH') ||
       TO_CHAR(SYSDATE, 'DD') || '�� ' ||
       TO_CHAR(SYSDATE, 'HH') || '�� ' ||
       TO_CHAR(SYSDATE, 'MI') || '�� ' ||
       TO_CHAR(SYSDATE, 'SS') || '��' ��¥
FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'YYYY"��" MONTHDD"��" HH"��" MI"��" SS"��"') ��¥
FROM DUAL;
--10
SELECT salary * commission_pct
FROM employees
ORDER BY commission_pct;
--11
SELECT salary * NVL(commission_pct, 10)
FROM employees;
--12
SELECT first_name, last_name, salary,
       DECODE(job_id, 'SH_CLERK', 1, 0)
FROM employees;
--13
SELECT first_name, last_name, salary,
       CASE
            WHEN salary > 10000 THEN salary
            WHEN salary BETWEEN 7000 and 10000 THEN salary * 1.1
            WHEN salary < 7000 THEN salary * 1.2
        END ����޿�
FROM employees;
--
SELECT first_name, last_name, salary,
       CASE
            WHEN salary > 10000 THEN salary
            WHEN salary BETWEEN 7000 and 10000 THEN salary * 1.1
            WHEN salary < 7000 THEN salary * 1.2
        END ����޿�,
        ROW_NUMBER()OVER(ORDER BY 
            CASE
                WHEN salary > 10000 THEN salary
                WHEN salary BETWEEN 7000 and 10000 THEN salary * 1.1
                WHEN salary < 7000 THEN salary * 1.2
            END 
        DESC) ����޿�����
FROM employees;
--15
SELECT COUNT(min_salary)
FROM jobs;
--16
SELECT AVG(min_salary), MAX(min_salary), MIN(min_salary),
       AVG(max_salary), MAX(max_salary), MIN(max_salary)
FROM jobs;
--17
SELECT department_id, COUNT(salary), AVG(salary)
FROM employees
GROUP BY department_id
ORDER BY AVG(salary) DESC;
--18
SELECT department_id, COUNT(salary), AVG(salary)
FROM employees
GROUP BY department_id
HAVING AVG(salary) < 5000
ORDER BY AVG(salary) DESC;
--order by�� ���� ���� �༭ ������ ������ ���� �� �ִ�
