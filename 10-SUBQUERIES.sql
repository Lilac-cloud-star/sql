-- SUBQUERIES


SELECT * 
FROM employee_demographics
WHERE employee_id IN(
				  SELECT employee_id
                  FROM employee_salary
                  WHERE dept_id=1
)
;

SELECT first_name , last_name,
(SELECT AVG(salary)
FROM employee_salary) AS Label
FROM employee_salary;


SELECT gender,AVG(age) , MAX(age) , MIN(age) , COUNT(age)
FROM employee_demographics
GROUP BY gender
;


SELECT *
FROM (
SELECT gender,
AVG(age)  avg_age, 
MAX(age) max_age, 
MIN(age) min_age, 
COUNT(age) num_age
FROM employee_demographics
GROUP BY gender) Agg_table
;


SELECT AVG(max_age)
FROM (
SELECT gender,
AVG(age)  avg_age, 
MAX(age) max_age, 
MIN(age) min_age, 
COUNT(age) num_age
FROM employee_demographics
GROUP BY gender) Agg_table
;


SELECT AVG(`MAX(age)`)
FROM (
SELECT gender,
AVG(age)  , 
MAX(age) , 
MIN(age) , 
COUNT(age) 
FROM employee_demographics
GROUP BY gender) Agg_table
;