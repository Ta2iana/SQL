-- Задача 9 (урок 3, karpov.courses SQL):Для первых 200 записей из таблицы orders выведите информацию:
-- Заказ № [id заказа] создан [дата]
-- Полученную колонку назовите order_info.
-- Пример: Заказ № 65 создан 2022-09-01

SELECT concat('Заказ № ', order_id, ' создан ', creation_time::date) as order_info
FROM   orders limit 200
