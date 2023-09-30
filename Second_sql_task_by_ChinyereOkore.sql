/* 1. From the following table, write a SQL query to find 
those employees who receive a higher salary than the employee 
with ID 163. Return first name, last name.*/


 SELECT FIRST_NAME, LAST_NAME
FROM employees
WHERE SALARY > 9500

/* From the following table, write a SQL query to 
find out which employees have the same designation as 
the employee whose ID is 169. Return first name, last name, 
department ID and job ID */

SELECT FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT_ID, JOB_ID
FROM employees
WHERE JOB_ID = (SELECT JOB_ID
                FROM employees
                where EMPLOYEE_ID = 169)


/* 3. From the following table, write a SQL query to find those 
employees whose salary matches the lowest salary of any of the departments.
Return first name, last name and department ID.*/

SELECT FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT_ID
FROM employees
WHERE SALARY IN (SELECT MIN(SALARY)
                FROM employees
               GROUP BY DEPARTMENT_ID)
			   
/* 4. From the following table, write a SQL query to 
find those employees who earn more than
the average salary. Return employee ID, first name, last name.*/

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME
FROM employees
WHERE SALARY > (SELECT AVG(SALARY)
               FROM employees
             )


/* 5. From the following table, write a SQL query to find those
employees who report to that manager whose first name
is ‘Payam’. Return first name, last name, employee ID and salary.*/

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY
FROM employees
WHERE MANAGER_ID =  (SELECT EMPLOYEE_ID
                  FROM employees
                  WHERE FIRST_NAME = 'Payam')









