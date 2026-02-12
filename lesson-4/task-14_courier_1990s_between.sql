-- Задача 14 (karpov.courses SQL): курьеры 1990-1995 гг. рождения
-- birth_date BETWEEN '1990-01-01' AND '1995-12-31 23:59:59'

select courier_id
From couriers 
Where birth_date between '1990-01-01' and '1995-12-31 23:59:59'
Order By courier_id
