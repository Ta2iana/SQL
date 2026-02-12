-- Задача 9 (karpov.courses SQL): user_actions для user_id 170/200/230, 25.08-04.09.2022
-- IN(170,200,230) + BETWEEN даты + ORDER BY order_id DESC

SELECT user_id,
       order_id,
       action,
       time
FROM   user_actions
WHERE  user_id in ('170', '200', '230')
   and time between '2022-08-25'
   and '2022-09-4 23:59:59'
ORDER BY order_id desc
