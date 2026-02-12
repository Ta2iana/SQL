-- Задача 13 (karpov.courses SQL): create_order за август 2022
-- BETWEEN '2022-08-01' AND '2022-08-31 23:59:59' + action='create_order'

Select order_id 
From user_actions
Where time Between '2022-08-01' And '2022-08-31 23:59:59'
 And action ='create_order'
Order by order_id
