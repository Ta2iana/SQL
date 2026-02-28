-- Задача 15 (урок 5, Karpov.courses SQL): уникальные пользователи/заказы, заказов на пользователя
-- COUNT(DISTINCT user_id/order_id) + деление + ROUND(2)

Select 
    Count(distinct user_id) as unique_users, 
    Count(distinct order_id) as unique_orders,
    Round(Count(distinct order_id)::DECIMAL/Count(distinct user_id),2) as orders_per_user
from user_actions
