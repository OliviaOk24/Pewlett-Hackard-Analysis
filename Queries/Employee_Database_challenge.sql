--Creating a table with the retiring employees by titles 

SELECT employees.emp_no, 
		employees.first_name, 
		employees.last_name,
		titles.title,
		titles.from_date,
		titles.to_date
INTO retirement_titles
FROM employees
	INNER JOIN titles 
	ON (employees.emp_no = titles.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY employees.emp_no ;

SELECT * FROM retirement_titles;

DROP TABLE retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (retirement_titles.emp_no) retirement_titles.emp_no, retirement_titles.first_name, retirement_titles.last_name, retirement_titles.title
INTO uniqretirement_titles
FROM retirement_titles
ORDER BY retirement_titles.emp_no, retirement_titles.to_date DESC;

SELECT * FROM uniqretirement_titles;


DROP TABLE retiring_titles;


-- Counting the unique retirement titles of the retiring employees and counting them.

SELECT COUNT(uniqretirement_titles.title), 
uniqretirement_titles.title
INTO retiring_titles
FROM uniqretirement_titles
GROUP BY uniqretirement_titles.title
ORDER BY COUNT(uniqretirement_titles.title) DESC;

SELECT * FROM retiring_titles;


--Creating the mentor eligible employees table 

SELECT DISTINCT ON (employees.emp_no) employees.emp_no,employees.first_name,
		employees.last_name, 
		employees.birth_date,
		dept_emp.from_date,
		dept_emp.to_date, 
		titles.title
INTO mentor_elig
FROM employees	
	INNER JOIN dept_emp
	ON (employees.emp_no = dept_emp.emp_no)
	INNER JOIN titles
	ON (employees.emp_no = titles.emp_no)
WHERE (dept_emp.to_date = '9999-01-01')
	AND (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY employees.emp_no ;

SELECT * FROM mentor_elig;



-- Additional queries for new tables for my summary section of deliverable 3

SELECT COUNT(mentor_elig.title), 
mentor_elig.title
INTO mentor_titles
FROM mentor_elig
GROUP BY mentor_elig.title
ORDER BY COUNT(mentor_elig.title) DESC;

SELECT * FROM mentor_titles;


SELECT DISTINCT ON (employees.emp_no) employees.emp_no,employees.first_name,
		employees.last_name, 
		employees.birth_date,
		dept_emp.from_date,
		dept_emp.to_date, 
		dept_emp.dept_no,
		titles.title
INTO mentor_elig1
FROM employees	
	INNER JOIN dept_emp
	ON (employees.emp_no = dept_emp.emp_no)
	INNER JOIN titles
	ON (employees.emp_no = titles.emp_no)
WHERE (dept_emp.to_date = '9999-01-01')
	AND (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY employees.emp_no ;

SELECT * FROM mentor_elig1;

SELECT COUNT(mentor_elig1.dept_no), 
mentor_elig1.dept_no
INTO mentor_dept
FROM mentor_elig1
GROUP BY mentor_elig1.dept_no
ORDER BY COUNT(mentor_elig1.dept_no) DESC;

SELECT * FROM mentor_dept;


SELECT employees.emp_no, 
		employees.first_name, 
		employees.last_name,
		titles.title,
		titles.from_date,
		titles.to_date, 
		dept_emp.dept_no
INTO retirement_departments
FROM employees
	INNER JOIN titles 
	ON (employees.emp_no = titles.emp_no)
	INNER JOIN dept_emp
	ON (employees.emp_no = dept_emp.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY employees.emp_no ;

SELECT * FROM retirement_departments;

SELECT COUNT(retirement_departments.dept_no), 
retirement_departments.dept_no
INTO retiring_dept
FROM retirement_departments
GROUP BY retirement_departments.dept_no
ORDER BY COUNT(retirement_departments.dept_no) DESC;

SELECT * FROM retiring_dept;
