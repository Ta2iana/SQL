-- Задача 5 (урок 4, karpov.courses SQL): products где name начинается с "чай" ИЛИ length=5
-- SPLIT_PART(name, ' ', 1)='чай' + LENGTH(name)=5

select product_id, name
From products
Where SPLIT_Part(name, ' ', 1) ='чай'
    or length(name)=5
Order by product_id
