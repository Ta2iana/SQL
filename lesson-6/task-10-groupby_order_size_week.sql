-- lesson-06/task-10-groupby_order_size_week.sql (Karpov.courses SQL урок 6, задача 10)
-- Размер заказа (array_length) + количество заказов за неделю 29.08-04.09.2022

SELECT array_length(product_ids, 1) as order_size,
    COUNT(order_id) as orders_count
FROM orders
WHERE creation_time  BETWEEN '2022-08-29' AND '2022-09-04 23:59:59'
GROUP BY order_size
ORDER BY order_size
