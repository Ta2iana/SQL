-- lesson-06/task-18-high-cancel-rate-users.sql (Karpov.courses SQL урок 6)
-- Пользователи с высоким % отмен (>50%) и >3 заказами (FILTER + HAVING)

SELECT user_id, 
    COUNT(order_id) FILTER(where action='create_order') as orders_count,
    ROUND(COUNT(order_id) FILTER(where action='cancel_order')/COUNT (order_id) FILTER(where action='create_order')::decimal,2) as cancel_rate
FROM user_actions
GROUP BY user_id
having count(order_id) FILTER(WHERE action='create_order')>3 and
    ROUND(COUNT(order_id) FILTER(where action='cancel_order')/COUNT (order_id) FILTER(where action='create_order')::decimal,2)>=0.50
ORDER BY user_id
