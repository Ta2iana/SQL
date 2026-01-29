-- Задача 15 (урок 3, karpov.courses SQL): налог 20% из цены с НДС
-- tax = ROUND(price/1.2*0.2,2), price_before_tax; ORDER BY price_before_tax DESC

SELECT product_id,
       name,
       price,
       round(price/1.2*0.2, 2) as tax,
       round(price-price/1.2*0.2, 2) as price_before_tax
FROM   products
ORDER BY price_before_tax desc, product_id
