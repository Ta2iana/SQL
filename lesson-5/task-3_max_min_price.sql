-- Задача 3 (урок 5, Karpov.courses SQL): MAX/MIN цены в products

SELECT MAX(price) as max_price,
    MIN(price) as min_price
FROM products
