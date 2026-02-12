-- Задача 15 (karpov.courses SQL): cancel_order август 2022, среды 12:00-15:59
-- date_part('dow')=3 + date_part('hour') 12-15 + BETWEEN месяц

SELECT user_id,
       order_id,
       action,
       time
FROM   user_actions
WHERE  action = 'cancel_order'
   and time between '2022-08-01'
   and '2022-08-31 23:59:59'
   and date_part('dow', time) = 3
   and date_part('hour', time) between 12
   and 15
ORDER BY order_id desc
