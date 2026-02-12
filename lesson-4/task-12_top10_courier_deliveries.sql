-- Задача 12 (karpov.courses SQL): последние 10 доставок курьера 100
-- courier_id=100 + action='deliver_order' + ORDER time DESC + LIMIT 10

Select order_id, time
from courier_actions 
Where courier_id= '100' 
 And action = 'deliver_order'
Order by time DESC
Limit 10 
