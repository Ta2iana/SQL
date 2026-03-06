-- task-6-groupby_youngest_birth_month.sql (Karpov.courses SQL урок 6, задача 6)
-- Месяц рождения САМОГО МОЛОДОГО по полу: GROUP BY sex + MAX(birth_date) + DATE_PART


SELECT sex, DATE_PART('month', MAX(birth_date))::integer as max_month
FROM users
GROUP BY sex
ORDER BY sex
