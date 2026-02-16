-- Задача 4 (урок 5, Karpov.courses SQL): COUNT(*) vs COUNT(column) для NULL в birth_date

SELECT COUNT(*) as dates, 
    COUNT (birth_date) as dates_not_null
FROM users
