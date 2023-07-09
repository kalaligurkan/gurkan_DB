-- SELECT <columnName> FROM <tableName>;

SELECT * FROM employees;

-- SUGGESTED FORMAT --
SELECT * FROM JOBS;

select * from employees;

SeLeCt * FrOm eMploYEES;


SELECT * FROM regions;


SELECT manager_id FROM employees;


SELECT first_name, hire_date FROM employees;

-- Write a querty to retrieve all the information from the phone number, job id, and manager id from employees table

select phone_number, job_id, manager_id from employees;



SELECT * FROM employees
WHERE job_id = 'IT_PROG';









--1. FROM   -> First retrieves the table.
--2. WHERE  -> filters the rows in the table, or tables.
--3. SELECT -> selects the specific column from the table.



-- Write the query to get the department name column for department id = 50 from departments table.

select department_name, department_id from departments
WHERE department_id = 50;


SELECT * FROM EMPLOYEES
WHERE first_name = 'Neena'
AND last_name = 'King'
AND JOB_ID = 'AD_PRES';


-- Write a query and retrieve first_name with Bruce and David;

SELECT * FROM EMPLOYEES
WHERE first_name != 'David';

SELECT * FROM EMPLOYEES
WHERE salary in (17000, 9000, 3100, 2900);

SELECT * FROM EMPLOYEES
WHERE first_name in ('Neena', 'Alexander');


SELECT * FROM EMPLOYEES
WHERE salary <> 17000
or salary <> 9000
or salary <> 3100
or salary <> 2900;


--Write the query to get all columns from the employees' table if the department id is 50 and the job id is "ST_MAN"

SELECT * FROM employees
WHERE department_id = 50
AND job_id = 'ST_MAN';

--Write the query to get all columns from the employees' table if the department id is 50 or the job id is "ST_MAN"

SELECT * FROM employees
WHERE department_id = 50
OR job_id = 'ST_MAN';

--Write the query to get all columns from the employees' table if the department id is 70 or the salary is more than 5000

SELECT * FROM employees
WHERE department_id = 70
OR salary > 5000;


--Write the query to get all columns from the employees' table if the department id is 70 and the salary is more than 5000

SELECT * FROM employees
WHERE department_id = 70
AND salary > 5000;


--Write the query to find the employees who are not displayed in step 4.

SELECT * FROM employees
WHERE department_id <> 70
or salary <= 5000;

SELECT * FROM employees
WHERE NOT (department_id = 70 AND salary > 5000 );


SELECT * FROM employees
WHERE commision_pct IS NOT null;


SELECT * FROM employees
WHERE salary BETWEEN 7000 AND 10000;

SELECT * FROM employees
WHERE salary >7000
AND salary < 10000;


SELECT * FROM employees
WHERE hire_date BETWEEN '01-JUL-96' AND '31-JUL-96';

--1. Write the query to get all columns from employees table if salary is between 1000 and 10000
SELECT * FROM employees
WHERE salary BETWEEN 1000 AND 10000;
--2. Write the query to get all columns from employees table if salary is between 6000 and 100000 and hire date is after June 7, 1997
SELECT * FROM employees
WHERE salary BETWEEN 6000 AND 100000
AND hire_date > '07-JUN-97';

--SELECT * FROM employees
--WHERE salary BETWEEN 6000 AND 10000
--AND hire_date > '07-JUN-97';
--SELECT * FROM  EMPLOYEES
--WHERE (salary >= 6000 and salary <= 100000)
--AND hire_date > '07-JUN-97';

-- CONCATINATION
SELECT first_name || ' ' || last_name FROM employees;

select first_name "first name" from employees;  -- first name here is to name a title or we can use as before it


--1. Write the query to get last name and add them ‘@gmail.com’ as columnName is ‘gmailAccount’ from employees table
select last_name || '@gmail.com' as gmailAccount from employees;
select concat(last_name, '@gmail.com') as "gmail account" from employees;  -- if more than one word then use double quote

--2. Write the query to get last name and add them ‘@gmail.com’ as columnName is ‘Gmail Account’ from employees table.

select last_name || '@gmail.com' "Gmail Account" from employees
order by last_name desc;

-- Write the query to get all columns from the employee's table for salaries more than 5000 and order the result for hire date in descending order.
select * from employees
where salary > 5000 
order by hire_date desc;


select * from employees
where first_name like '%t_p%';   --%a brings ends a names,  A% brings startswith and _ represents single character


--1. Write the query to find all columns from the employees’ table for first_name starting with ‘C’.

SELECT * FROM employees
WHERE first_name LIKE 'C%';

--2. Write the query to find all columns from the employees' table for the length of last_name is 6.
SELECT * FROM employees
WHERE LENGTH(last_name) = 6;

--3. Write the query to find all columns from the employees’ table for first_name that contains two lowercase ‘a’.

SELECT * FROM employees
WHERE first_name LIKE '%a%a%';

--HOMEWORK

--1. Write the query to find all columns from the employees’ table for first_name starting with ‘C’.

SELECT * FROM employees
WHERE first_name LIKE 'C%';

--2. Write the query to find all columns from the employees' table for the length of last_name is 6.

SELECT * FROM employees
WHERE LENGTH (last_name) = 6;

--3. Write the query to find all columns from the employees’ table for first_name that contains two lowercase ‘a’.

SELECT * FROM employees
WHERE first_name LIKE '%a%a%';


select country_name from countries;

-------------------------------------------------------------
--1. Write the query to get all employees last names in upper case.
SELECT upper(last_name) FROM employees;

--2. Write the query to get all employees emails in lower case.
SELECT lower(email) FROM employees;

--3. Write the query to get all employees first name in upper case, last names in lower case and emails in only first letter upper case.
SELECT upper(first_name), lower(last_name), initcap(email) FROM employees;

--4. Write a query to retrieve the first names and last names of all employees in uppercase, and their job titles in lowercase.
--Additionally, alias the columns as "First Name", "Last Name", and "Job Title" respectively.
SELECT upper(first_name) as "First Name", upper(last_name) as "Last Name", lower(job_id) as "Job Title" FROM employees;

--5. Write a query and return each row in this format “steve IS THE NAME and their job is: MANAGER “
SELECT concat(concat(lower(first_name), upper(' is the name ')), concat('and their job is: ', upper(job_id))) from employees;



SELECT length(last_name), last_name FROM employees;


SELECT last_name, substr(last_name, 2, 4) from employees;

SELECT last_name, substr(last_name, 4) from employees;

select city from locations
where instr(city, 'a') > 0;

select lower(first_name || ' ' || last_name), instr(lower(first_name || ' ' || last_name), 'k') from employees;



-- 1.	Write a query that returns those employees who have  commission less than their salary
SELECT * FROM employees
WHERE commission_pct < salary;
-- 2.	Write a query that returns all employees that have a salary greater than 2500 and also work in department_id no 20
SELECT * FROM employees
WHERE salary > 2500
AND department_id = 20;
-- 3.	Write a query that returns all employees that are not AD_VP nor SA_REP and have a salary greater than or equal to 2000
SELECT * FROM employees
WHERE job_id NOT IN ('AD_VP', 'SA_REP')
AND salary >= 2000;
-- 4.	Write a query to retrieve the first names and last names of all employees along with their job IDs, and concatenate them into a job_id column
--      in the format: <first_name> <last_name> works as a <job_id>. Alias this column as "Full Info".
SELECT first_name, last_name, first_name || ' ' || last_name || ' works as a ' || job_id "Full Info" FROM employees;
-- 5.	Write a query prints first name column as salary, and prints every name in a cell as " Steven makes $24000 per month "
SELECT first_name ||' makes $' || salary || ' per month '  as "salary" FROM employees;

SELECT first_name ||' makes $' || salary * 12 || ' per year '  as "salary" FROM employees;


--SINGLE ROW FUNCTIONS

select upper('hello') from employees;

select upper('hello') from dual;

select initcap('hello my name is NAME') as sentence from dual;

select lower ('THIS IS TECHGLOBAL B6') from dual;

select lower(job_id) from employees;

SELECT first_name, last_name, concat(concat(concat(first_name, ' ' ), concat(last_name, ' works as a ')), job_id) as "Full Info" FROM employees;

select concat(concat(upper(first_name), ' '), lower(job_id)) from employees;


select round(107.0884, 3) from dual;

select * from employees;


--1.	Write a query to display the first name, last name, and hire date of all employees who were hired between January 1, 2000, and December 31, 2000, and whose last name begins with the letter 'S'.

select first_name, last_name, hire_date from employees
where (hire_date > '01-JAN-00') and (hire_date < '31-DEC-00')
and last_name like 'S%';

--2.	Write a query to display the first name, last name, and job title of all employees who work in the Sales or Accounting departments.

select first_name, last_name, job_id from employees
where job_id like 'SA%' or job_id like 'AC%';

--3.	Write a query to display the first name, last name, and salary of all employees who earn more than $10,000 and less than $20,000.

select first_name, last_name, salary from employees
where salary > 10000 
and salary < 20000;

--4.	Write a query to display the first name, last name, and hire date of all employees who do not have a manager.

select first_name, last_name, hire_date from employees
where manager_id is null;

--5.	Write a query to display the first name, last name, and job title of all employees who are either Sales Representatives or Sales Managers.

select first_name, last_name, job_id from employees
where job_id = 'SA_MAN'
or job_id = 'SA_REP';

--6.	Write a query to display the first name, last name, and hire date of all employees who were not hired in the year 2000.

select first_name, last_name, hire_date from employees
where hire_date < '01-JAN-00'
or hire_date > '31-DEC-00';

--7.	Write a query to display the first name and last name of all employees, concatenated as "First Last".

select first_name || ' ' || last_name as "First Last" from employees;

--8.	Write a query to display the first name, last name, and salary of all employees, sorted by salary in descending order.

select first_name, last_name, salary from employees
order by salary desc;

--9.	Write a query to display the first name, last name, and job title of all employees whose job title contains the word "Manager".

select first_name, last_name, job_id from employees
where job_id like '%MA%';

--10.	Write a query to display the first name, last name, and salary of all employees whose salary is not null.

select first_name, last_name, salary from employees
where salary is not null;

--11.	Write a query to display the first name, last name, and job title of all employees, with the first name and last name in uppercase letters and the job title in lowercase letters.

select upper(first_name), upper(last_name), lower(job_id) from employees;

--12.	Write a query to display the first name, last name, and job title of all employees, with the first letter of each word in the job title capitalized.

select first_name, last_name, initcap(job_id) from employees;

--13.	Write a query to display the first name, last name, and length of the job title of all employees.

select first_name, last_name, length(job_id) from employees;

--14.	Write a query to display the first name, last name, and a concatenated string of the first name, last name, and job title of all employees.

select first_name, last_name, first_name || ' ' || last_name || ' ' || job_id from employees;

--15.	Write a query to display the first name, last name, and the first three characters of the job title of all employees.

select first_name, last_name, substr(job_id, 1, 3) from employees;

--16.	Write a query to display the first name, last name, and the position of the first occurrence of the letter "a" in the job title of all employees.

select first_name, last_name, instr(lower(job_id), 'a') from employees;

--17.	Write a query to display the first name, last name, and salary of all employees, with the salary rounded to the nearest thousand dollars.

select first_name, last_name, round(salary) from employees;

--18.	Write a query to display the first name, last name, and salary of all employees, with the salary truncated to the nearest thousand dollars.

select first_name, last_name, trunc(salary) from employees;

--19.	Write a query to display the first name, last name, and the length of the first name of all employees.

select first_name, last_name, length(first_name) from employees;

--20.	Write a query to display the first name, last name, and a concatenated string of the first name, a comma, and the last name of all employees.

select first_name, last_name, first_name || ', ' || last_name from employees;

--21.	Write a query to display the first name, last name, and the first three characters of the first name of all employees.

select first_name, last_name, substr(first_name, 1, 3) from employees; 

--22.	Write a query to display the first name, last name, and the position of the first occurrence of the letter "e" in the first name of all employees.

select first_name, last_name, instr(lower(first_name), 'e') from employees;

--23.	Write a query to display the first name, last name, and the length of the last name of all employees.

select first_name, last_name, length(last_name) from employees;

--24.	Write a query to display the first name, last name, and the first three characters of the last name of all employees.

select first_name, last_name, substr(last_name, 1, 3) from employees;

--25.	Write a query to display the first name, last name, and the position of the first occurrence of the letter "a" in the last name of all employees.

select first_name, last_name, instr(lower(last_name), 'k') from employees;
