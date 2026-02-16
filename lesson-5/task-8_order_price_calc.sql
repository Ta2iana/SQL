-- Задача 8 (урок 5, Karpov.courses SQL): стоимость заказа (сухарики+чипсы+напиток)

SELECT SUM(price) as order_price
FROM products
WHERE name IN('сухарики','чипсы', 'энергетический напиток')
