-- Задача 13 (урок 3, karpov.courses SQL): +5% к цене с ROUND
-- product_id, name, old_price, new_price (round); ORDER BY new_price DESC

SELECT product_id,
       name,
       price as old_price,
       round(price*1.05, 1) as new_price
FROM   products
ORDER BY new_price desc, product_id
