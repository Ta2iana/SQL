-- Задача 14 (урок 3, karpov.courses SQL): CASE для +5% (price>100 И name!='икра')
-- product_id, name, old_price, new_price; ORDER BY new_price DESC

SELECT product_id,
       name,
       price as old_price,
       case when price > 100 and
                 name <> 'икра' then price*1.05
            else price end as new_price
FROM   products
ORDER BY new_price desc, product_id
