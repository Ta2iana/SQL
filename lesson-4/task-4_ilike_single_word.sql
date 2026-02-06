-- Задача 7 (урок 4, karpov.courses SQL): products на "с" + одно слово (без пробелов)
-- ILIKE 'с%' И NOT LIKE '% %' (исключить многословные)

SELECT product_id,
       name
FROM   products
WHERE  name ilike 'с%'
   and name not like '% %'
ORDER BY product_id
