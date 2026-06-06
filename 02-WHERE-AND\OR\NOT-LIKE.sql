# WHERE satır döndürür - select sütun 

select*
from employee_salary
WHERE first_name = 'Leslie';


select*
from employee_salary
WHERE salary >= 50000;
# = koymazsan 50000e eşit olanları almaz.

Select *
from employee_demographics
where gender != 'male' ;


Select *
from employee_demographics
where birth_date > '1985-01-01' ;
#yyyy-mm-dd


-- AND OR NOT - logical op.


Select *
from employee_demographics
where gender != 'male' 
and birth_date > '1985-01-01';
# bütun sütunları getir
# from employee_demographics tableından
# cinsiyetin erkeğe eşit olmaayanları VE doğum tarii belitirlen tarihten büüyk olanları 


Select *
from employee_demographics
where gender != 'male' 
or birth_date > '1985-01-01';
# bu iki statement'den birini sağlarsan EN AZ BİRİNİ çıktıya verebilrsin
# dikkat edersen zaten male olmayanlar yani female olup küçük tarihi sağlamayanlar var
# aynı şekilde tarihi sağlayıp male olanlar da var

Select *
from employee_demographics
where (first_name = 'Leslie' AND age = '44') OR age>55  ;
#izole şart cümlesi


-- LIKE stat  % veya _ kullanılarak
Select *
from employee_demographics
where first_name ='Jerry'
or first_name like 'Les%'
;

Select *
from employee_demographics
where first_name ='Jerry'
or first_name like 'Les%' #Les ile başlayıp nasıl devam ederse etsin diyen
or first_name like '%a%'  #içinde a olan her isim
;


Select *
from employee_demographics
where first_name like 'a__'  #a'dan sonra iki karakter daha devam edecek ve bu kadar başka daha devam edemez.Ann
or first_name like 'a___%'   #april and andy a'dan sonra 3 karakter ve daha sonra ne ise(%)
or birth_date like '1985%'
;