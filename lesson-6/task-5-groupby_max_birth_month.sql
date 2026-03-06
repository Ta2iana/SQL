-- task-5-groupby_max_birth_month.sql (Karpov.courses SQL урок 6, задача 5)
-- Максимальный месяц рождения по полу: GROUP BY sex + DATE_PART('month') + MAX

SELECT sex,
    MAX(DATE_PART('month', birth_date)::INTEGER) AS max_month
FROM users
GROUP BY sex
ORDER BY sex
