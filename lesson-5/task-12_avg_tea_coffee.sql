-- Задача 12 (урок 5, Karpov.courses SQL): средняя цена чая/кофе без иван-чая и гриба
-- AVG(price) с ILIKE '%чай%' OR '%кофе%', исключение '%иван-чай%' AND '%чайный гриб%'
-- ROUND(2 знака) + скобки для логики OR/AND в WHERE


SELECT ROUND(AVG(price),2) as avg_price
FROM products
WHERE (name ILIKE '%чай%' or name ILIKE'%кофе%')
    and name NOT LIKE '%иван-чай%' 
    and name NOT LIKE '%чайный гриб%'
