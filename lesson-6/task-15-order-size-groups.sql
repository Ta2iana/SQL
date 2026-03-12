-- lesson-6/task-15-order-size-groups.sql (Karpov.courses)
-- Группировка заказов по размеру корзины (Малый/Средний/Большой)

SELECT COUNT(distinct order_id) as orders_count,
    CASE When array_length(product_ids, 1)<=3 then 'Малый'
    WHEN array_length(product_ids, 1) between 4 and 6 then 'Средний'
    WHEN array_length(product_ids, 1) >=7then 'Большой'
    END as order_size
FROM orders
GROUP BY order_size
ORDER BY orders_count
