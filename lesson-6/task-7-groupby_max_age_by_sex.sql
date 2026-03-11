-- Максимальный возраст по полу: GROUP BY sex + MAX(AGE) + DATE_PART('year')
-- Преобразование ::INTEGER для целого числа

SELECT sex,
       date_part('year', max(age(birth_date)))::integer as max_age
FROM   users
GROUP BY sex
ORDER BY max_age
