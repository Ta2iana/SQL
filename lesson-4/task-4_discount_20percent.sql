-- Задача 4 (урок 4, karpov.courses SQL): скидка 20% на products, new_price > 100 руб
-- old_price, new_price=price*0.8; ORDER BY product_id

Select product_id, name, 
    price-price*0.2 as new_price,
    price as old_price
From products
Where  price-price*0.2 >100
Order by product_id
