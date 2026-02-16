-- Задача 5 (урок 5, Karpov.courses SQL): COUNT vs COUNT(DISTINCT) user_id

SELECT COUNT(user_id) as users,
    COUNT(DISTINCT user_id) as unique_users
FROM user_actions
