-- lesson-6/task-12-top5-active-users-august.sql (Karpov.courses)
-- Топ-5 пользователей по созданию заказов в августе 2022

SELECT user_id, 
    COUNT(order_id) as created_orders
FROM user_actions
WHERE action='create_order' and
    time between '2022-08-01' and '2022-09-1'
GROUP BY user_id
ORDER BY created_orders DESC, user_id
LIMIT 5
