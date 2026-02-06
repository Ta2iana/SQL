-- Задача 6 (урок 4, karpov.courses SQL): products содержащие "чай" в любом месте name
-- ILIKE '%чай%' — поиск подстроки без учета регистра

Select product_id, name 
From products
Where name ILIKE '%чай%'
Order by product_id
