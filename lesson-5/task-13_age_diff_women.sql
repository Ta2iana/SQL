-- Задача 13 (урок 5, Karpov.courses SQL): разница возраста женщин (AGE + ::VARCHAR)
-- MAX(birth_date) - MIN(birth_date) для sex='female'

Select AGE(MAX(birth_date), MIN(birth_date))::varchar as age_diff
FROM users
WHere sex='female'
