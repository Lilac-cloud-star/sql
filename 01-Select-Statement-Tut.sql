SELECT *
FROM Parks_and_Recreation.employee_demographics;
#üstüne gelip highlight oalcak şekilde tıklarsan bu komutu çalıştırabilirsin alttaki yerine

#pemdas-orders of math func paranthesis-exponent-multi-divi-add-subtraction
#parantez-üstel-çarpma-bölme-ekleme-çıkarma
SELECT first_name, 
last_name,
birth_date,
age,
age + 10,
(age + 20) * 10
FROM Parks_and_Recreation.employee_demographics;


SELECT DISTINCT gender
FROM Parks_and_Recreation.employee_demographics;
