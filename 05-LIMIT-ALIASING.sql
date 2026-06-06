-- LIMIT & ALIASING

# İLK 3 SATIRI ALDI
SELECT *
FROM employee_demographics
LIMIT 3 
;


#EN YÜKSEK YAŞTAN BAŞLAYARAK AZALN ŞEKİLDE 3 TOP SATIR 
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 4;

#ÇIKAN SONUÇTAKİ 2 SATIR ATLA SIRADAN 3 TAEN GÖSTER
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2,3;


-- ALIASING

SELECT gender , AVG (age) AS avg_age  #AS YAZILMASINA DA GEREKMİYOR
FROM employee_demographics
GROUP BY GENDER
HAVING avg_age > 40;  # HAVING AVG(age) -> HAVING avg_age;  DÖNÜŞTÜ  