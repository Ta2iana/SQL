-- Задача 17 (урок 5, Karpov.courses SQL): доля заказов с 5+ товарами из orders
-- array_length(product_ids, 1) >= 5 + COUNT FILTER + деление с ::decimal + ROUND(2)

Select Count(order_id) as orders,
    Count(order_id) filter (where array_length(product_ids,1)>=5) as large_orders,
    Round(Count(order_id) filter (where array_length(product_ids,1)>=5)/Count(order_id)::decimal,2) as large_orders_share
From orders
