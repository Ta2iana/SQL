-- lesson-6/task-14-users-last-order-before-2022-09-08.sql
-- Пользователи с последним заказом до 8 сентября 2022

SELECT user_id
FROM user_actions
WHERE action='create_order' 
GROUP BY user_id
HAVING MAX(time) <= '2022-09-08 00:00:00'
ORDER BY user_id
