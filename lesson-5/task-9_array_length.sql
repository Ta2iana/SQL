-- Задача 9 (урок 5, Karpov.courses SQL): заказы с 9+ товарами
-- array_length(product_ids, 1) >= 9 + COUNT(order_id)

SELECT COUNT(order_id) as orders
FROM orders
WHERE array_length(product_ids, 1)>=9 
