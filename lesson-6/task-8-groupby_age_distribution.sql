-- Распределение пользователей по возрасту: GROUP BY возраст + COUNT
-- Возраст в полных годах ::INTEGER


SELECT date_part('year',age(birth_date))::integer as age,
    COUNT(user_id) as users_count
FROM users
GROUP BY age
ORDER BY age 
