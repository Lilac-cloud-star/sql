-- GROUP BY
SELECT * 
FROM employee_demographics ;

SELECT gender 
FROM employee_demographics
GROUP BY gender;

SELECT gender , AVG(age)
FROM employee_demographics
GROUP BY gender;
#AVG AGE'İ MALE FEMALE OLARAK GRUPLAYARAK VERİR

SELECT occupation , salary 
FROM employee_salary
GROUP BY occupation , salary;


SELECT gender , AVG(age) , MAX(age) , MIN(age) , COUNT(age)
FROM employee_demographics
GROUP BY gender;


--  ORDER BY
SELECT * 
FROM employee_demographics
ORDER BY first_name; 

#first_name E GÖRE ALFABETİK ŞEKİLDE A'DAN BAŞLAYARAK SIRALADI AMA DESC EKLERSEN SONUNA
#TERSTEN YAZMAAY BAŞLAYACAK

SELECT * 
FROM employee_demographics
ORDER BY first_name DESC;


SELECT * 
FROM employee_demographics
ORDER BY gender , age DESC;
# İLK ÖNCE CİNSİYETE GÖRE DİZDİ DAHA SONRA YAŞI DA AZALAN ŞEKİLDE DİZDİ  


SELECT * 
FROM employee_demographics
ORDER BY 5 , 4 DESC;
#COLUMN SIRASI İLE DE YAPILABİLİR