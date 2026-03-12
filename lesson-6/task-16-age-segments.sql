-- lesson-6/task-16-age-segments.sql (Karpov.courses)
-- Демографическая сегментация по возрастным группам

SELECT COUNT(DISTINCT user_id) as users_count,
CASE WHEN date_part('year',age(birth_date))::integer between 18 and 24 then '18-24'
    WHEN date_part('year',age(birth_date))::integer between 25 and 29 then '25-29'
    WHEN date_part('year',age(birth_date))::integer between 30 and 35 then '30-35'
    WHEN date_part('year',age(birth_date))::integer >=36 then '36+'
    END as group_age
FROM users
where birth_date IS NOT null
GROUP BY group_age
ORDER BY group_age
