-- lesson-06/task-9-groupby_age_sex_distribution.sql (Karpov.courses SQL урок 6, задача 9)
-- Половозрастная структура пользователей: GROUP BY возраст+пол + WHERE NOT NULL
-- WHERE birth_date IS NOT NULL + COUNT по двойной группировке

SELECT sex, 
    date_part('year',(age(birth_date)))::integer as age,
    COUNT(user_id) as users_count
FROM users
WHERE birth_date IS NOT NULL
GROUP BY age,sex
ORDER BY age 
