-- lesson-6/task-13-couriers-one-order-september.sql (Karpov.courses)
-- Курьеры с ровно 1 доставкой в сентябре 2022

SELECT courier_id
FROM courier_actions
WHERE time between '2022-09-01' and '2022-10-01' and 
    action='deliver_order'
GROUP BY courier_id
HAVING COUNT(DISTINCT order_id) = 1 
ORDER BY courier_id
