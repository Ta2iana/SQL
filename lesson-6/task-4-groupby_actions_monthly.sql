-- lesson-06/task-4-groupby_actions_monthly.sql (Karpov.courses SQL урок 6)
-- Действия по месяцам: GROUP BY action + DATE_TRUNC('month', time)


SELECT action, 
    DATE_TRUNC('month', time) as month,
    COUNT(order_id) as orders_count
FROM user_actions 
GROUP BY action, month
ORDER BY month, action
