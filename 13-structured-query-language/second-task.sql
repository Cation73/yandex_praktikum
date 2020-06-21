-- Посчитайте количество рейсов по всем моделям самолётов Boeing и Airbus в сентябре. 
-- Назовите получившуюся переменную flights_amount и выведите её.

SELECT
    COUNT(aircrafts.model) AS flights_amount
FROM
    aircrafts
INNER JOIN flights ON flights.aircraft_code = aircrafts.aircraft_code
    WHERE (DATE_TRUNC('month', flights.departure_time) BETWEEN '2018-09-01' AND '2018-09-30')
    AND (aircrafts.model LIKE 'Boeing%' OR aircrafts.model LIKE 'Airbus%')