-- Задача 10 (karpov.courses SQL): курьеры без birth_date (NULL значения)
-- WHERE birth_date IS NULL + ORDER BY courier_id

select birth_date, courier_id, sex
From couriers 
Where birth_date is NULL
Order By courier_id
