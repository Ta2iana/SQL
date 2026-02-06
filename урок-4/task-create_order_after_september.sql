-- Задача 3 (урок 4, karpov.courses SQL): create_order после 2022-09-06 00:00 из user_actions
-- user_id, order_id, time; сортировка по order_id ASC
-- Навыки: WHERE с timestamp, фильтрация событий по дате+времени

select user_id, order_id, time
From user_actions
Where action ='create_order'
    and time>'2022-09-06 00:00:00'
Order by order_id
