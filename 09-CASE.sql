-- CASE STATEMENTS

SELECT first_name,  
last_name,
age,
CASE
	WHEN age <= 30 THEN 'YOUNG' 
    WHEN age BETWEEN 31 AND 49 THEN 'MID-AGE'
    WHEN age >= 50 THEN 'OLD'
END AS Label
FROM employee_demographics
;


-- PAY INCREASE AND BONUS
-- <50000 = %5
-- >50000 =%7
-- FINANCE =%10 BONUS

	SELECT salary , first_name , last_name, occupation,
	CASE
		WHEN dept_id=6 THEN salary*.1
	END AS Bonus,
	CASE
		WHEN salary<50000 THEN salary + (salary*0.05)
		WHEN salary>=50000 THEN salary * 1.07
		WHEN occupation='Nurse' THEN salary + (salary*0.1) 
	END AS new_salary
	FROM employee_salary
	;



