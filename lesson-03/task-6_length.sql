-- Товар с самым длинным названием (LENGTH + ORDER BY + LIMIT)
-- Результат: name, name_length, price

SELECT name ,
       price,
       length(name) as name_length
FROM   products
ORDER BY name_length desc limit 1
