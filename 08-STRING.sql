-- STRING FUNC 

SELECT LENGTH('skyfall');

SELECT first_name , LENGTH(first_name)
FROM employee_demographics
ORDER BY 2
;
# ORDER BY 2 2.SÜTUNA GÖRE SIRALAR 1 İSE 1.SÜTUNA GÖRE BUNLARIN HEPSİ AZALANDAN ARTANA GÖRE YAPAR

SELECT UPPER('sky');
SELECT LOWER('SKY');

SELECT UPPER(first_name) AS Label
FROM employee_demographics
;


-- TRIMS 
SELECT TRIM('   S Ky');   #S İLE K ARASINI TEMZİLEMEDİ
SELECT LTRIM('   S Ky');
SELECT RTRIM('   S Ky');


SELECT first_name ,
RIGHT(first_name , 3),
LEFT(first_name , 3) ,
SUBSTRING(first_name , 3 , 2),  # ÜÇÜNÇÜ YERE GİT 3. YER DAHİL OLARAK 2 KARAKTER AL
birth_date,
SUBSTRING(bİrth_date , 6 , 2) AS BIRTH_MONTH
FROM employee_demographics
;
# first_name BAŞINDAN BAŞLA YANİ SOLUNDAN BAŞLAYARAK KAÇ KARAKTER SEÇİP
# BUNU GÖSTERMEK İSTİYORSUN BUNU YAPAR


SELECT LOCATE('İ','SELİM');

SELECT first_name , LOCATE('An',first_name)
FROM employee_demographics
;

SELECT first_name , last_name,
CONCAT(first_name,' ',last_name) AS FULL_NAME
FROM employee_demographics
;