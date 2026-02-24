-- Задача 14 (урок 5): среднее кол-во товаров в заказах по выходным
-- DATE_PART('dow') IN(0,6) + array_length + AVG + ROUND(2)


SELECT ROUND(AVG(array_length(product_ids,1)),2) as avg_order_size
FROM orders
where DATE_PART('dow', creation_time) IN (0,6)
