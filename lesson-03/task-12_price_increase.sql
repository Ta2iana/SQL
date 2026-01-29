-- Задача 12 (урок 3, karpov.courses SQL): +5% к цене продуктов
-- product_id, name, old_price, new_price; ORDER BY new_price DESC, product_id

SELECT product_id,
       name,
       price as old_price,
       price*1.05 as new_price
FROM   products
ORDER BY new_price desc, product_id
