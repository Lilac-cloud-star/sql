-- UNIONS SATIRLARI BİRLEŞTİRME


SELECT first_name , last_name
FROM employee_demographics
UNION ALL                 # 'UNION' YAZIMI DEFAULT OLARAK DISTINCT ŞEKLİNDEDİR VE UNQUE OLMAYAN DEĞERLERİ RLL UO YAPAR VE TEK BİR DEĞER OLARK GÖSTERİR AMA ALL YAPRSAN HEPSİNİ ALT ALTA GÖSTERİİ 
SELECT first_name , last_name
FROM employee_salary
;


SELECT first_name , last_name , 'Old Mele' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'MaLe'
UNION
SELECT first_name , last_name , 'Old Female' AS  Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name , last_name , 'H-Paid' AS Label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name , last_name
;