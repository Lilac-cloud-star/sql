-- STORED PROCEDURES

# HANGİ VERİ TABANINDA OLUDĞUNU DA BELİRTEBİLRSİN USE DİYEREK
CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE SALARY >= 50000;

CALL large_salaries();


CREATE PROCEDURE large_salaries2()
SELECT *
FROM employee_salary
WHERE SALARY >= 50000;
SELECT *
FROM employee_salary
WHERE SALARY >= 10000;


DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE SALARY >= 50000;
	SELECT *
	FROM employee_salary
	WHERE SALARY >= 10000;
END $$
DELIMITER ;

CALL large_salaries3();


DELIMITER $$
CREATE PROCEDURE large_salaries4( param_calisan_id INT)
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id = param_calisan_id
    ;
END $$
DELIMITER ;
 
CALL large_salaries4(1)







