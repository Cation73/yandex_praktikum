-- Посчитайте среднее количество прибывающих рейсов в день для каждого города за август 2018 года. 
-- Назовите получившееся поле average_flights, вместе с ним выведите столбец city.

SELECT
    city,
    AVG(SUBQ.amount_flights) AS average_flights
FROM
    (SELECT 
        COUNT(flights.flight_id) AS amount_flights,
        airports.city AS city
    FROM flights
    INNER JOIN airports ON flights.arrival_airport = airports.airport_code
    WHERE DATE_TRUNC('day', flights.arrival_time) BETWEEN '2018-08-01' AND '2018-08-31'
    GROUP BY
        EXTRACT(day FROM flights.arrival_time), city) AS SUBQ
GROUP BY
    city;