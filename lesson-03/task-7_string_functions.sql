-- Задача 7 (урок 3, karpov.courses SQL): Преобразование названия товара: взять первое слово в верхнем регистре
-- Используются: SPLIT_PART, UPPER, ORDER BY
-- Результат: name, first_word, price

SELECT name,
       price,
       upper(split_part(name, ' ', 1)) as first_word
FROM   products
ORDER BY name
