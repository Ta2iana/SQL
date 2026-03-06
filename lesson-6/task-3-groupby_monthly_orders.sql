-- Задача 3 (урок 6, Karpov.courses SQL): заказы по месяцам из orders
-- DATE_TRUNC('month', creation_time) + GROUP BY + COUNT


SELECT DATE_TRUNC('month',  creation_time) as month, 
    COUNT(order_id) as orders_count
FROM orders
GROUP BY month
ORDER BY month
