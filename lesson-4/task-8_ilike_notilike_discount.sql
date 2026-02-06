-- Задача 8 (урок 4, karpov.courses SQL): чаи >60р, скидка 25%, без "чайного гриба"
-- ILIKE '%чай%', NOT ILIKE 'чайный гриб', new_price=price*0.75

Select product_id, name, price, 
    price-price*0.25 as new_price, '25%' as discount
From products
Where Name Ilike '%чай%'
    and name not Ilike 'чайный гриб'
    and price >60
Order by product_id
