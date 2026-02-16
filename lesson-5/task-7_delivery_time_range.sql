-- Задача 7 (урок 5, Karpov.courses SQL): диапазон времени доставок courier_actions

SELECT MIN(time) as first_delivery,
    MAX(time) as last_delivery
FROM courier_actions
WHERE action='deliver_order'
