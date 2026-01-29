-- Задача 11 (урок 3, karpov.courses SQL):Задача 11 (урок 3, Карпов курсы SQL): COALESCE для birth_year с NULL -> 'unknown'
-- id курьеров + birth_year из couriers (COALESCE + date_part::text)

SELECT courier_id,
       coalesce(date_part('year', birth_date)::text, 'unknown') as birth_year
FROM   couriers
ORDER BY birth_year desc, courier_id
