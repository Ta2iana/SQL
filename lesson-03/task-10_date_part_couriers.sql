-- Задача 10 (урок 3, karpov.courses SQL):id курьеров и годы рождения из couriers; 
-- birth_year из birth_date; ORDER BY birth_year DESC, courier_id ASC

SELECT courier_id,
       date_part('year', birth_date) as birth_year
FROM   couriers
ORDER BY birth_year desc, courier_id
