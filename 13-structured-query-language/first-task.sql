-- Найдите количество рейсов на каждой модели самолёта с вылетом в сентябре 2018 года. 
-- Назовите получившееся поле flights_amount и выведите его. 
-- Также напечатайте на экране поле model.

SELECT
    aircrafts.model,
    COUNT(flights.flight_id) as flights_amount
    --DATE_TRUNC('month', flights.departure_time)
FROM
    aircrafts
INNER JOIN flights ON aircrafts.aircraft_code = flights.aircraft_code 
WHERE DATE_TRUNC('month', flights.departure_time) BETWEEN '2018-09-01' AND '2018-09-30'
GROUP BY
    aircrafts.model