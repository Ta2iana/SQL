-- Задача 11 (karpov.courses SQL): 50 самых молодых мужчин без NULL birth_date
-- IS NOT NULL + ORDER birth_date DESC + LIMIT 50

Select user_id, birth_date
From users
Where birth_date Is not null 
 And sex ='male'
Order by birth_date desc
Limit 50 
