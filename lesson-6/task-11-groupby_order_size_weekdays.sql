-- lesson-06/task-11-groupby_order_size_weekdays.sql (Karpov.courses)
-- Размер заказа по будням (array_length + isodow) + HAVING >2000

SELECT array_length(product_ids, 1) as order_size,
    COUNT(order_id) as orders_count
FROM orders
WHERE DATE_PART('isodow', creation_time) BETWEEN 1 AND 5
GROUP BY order_size
having COUNT(order_id)>2000
ORDER BY order_size
