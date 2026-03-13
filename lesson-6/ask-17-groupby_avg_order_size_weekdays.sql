-- lesson-06/task-17-groupby_avg_order_size_weekdays.sql (Karpov.courses SQL урок 6)
-- Средний размер заказа (array_length): будни vs выходные (DATE_PART isodow)

SELECT ROUND(AVG(array_length(product_ids, 1)),2) as avg_order_size,
    Case when DATE_PART('isodow', creation_time) BETWEEN 1 AND 5 then 'weekdays'
    When DATE_PART('isodow', creation_time) BETWEEN 6 AND 7 then 'weekend'
    End as week_part
FROM orders 
GROUP BY week_part
ORDER BY avg_order_size
