-- Для каждой недели с 23 июля по 30 сентября 2018 года посчитайте количество приобретённых билетов в Москву. 
-- Номер недели назовите week_number, количество билетов — ticket_amount. 
-- Вставьте результат в первую часть составного запроса в прекоде.
-- Ваш запрос соединится с запросом из предыдущей задачи оператором LEFT JOIN. 
-- Он работает так же, как и INNER JOIN. Но в ячейках с неделями, в которые фестивали не проходили, будут значения nan.
-- Вы получите таблицу с такими столбцами:
-- week_number — номер недели из вашего запроса;
-- ticket_amount — количество купленных за неделю билетов;
-- festival_week — номер недели из предыдущего запроса. Будет равен nan, если фестиваля в эту неделю не было.
-- festival_name — название фестиваля. Будет равен nan, если фестиваля в эту неделю не было.

SELECT 
	T.week_number,
	T.ticket_amount,
	T.festival_week,
	T.festival_name
FROM 
((SELECT
      EXTRACT(week FROM flights.arrival_time) AS week_number,
      COUNT(flights.flight_id) AS ticket_amount
  FROM
      flights
  INNER JOIN airports ON airports.airport_code = flights.arrival_airport
  INNER JOIN ticket_flights ON ticket_flights.flight_id = flights.flight_id
  WHERE
      airports.city = 'Москва' AND CAST(flights.arrival_time AS date) BETWEEN '2018-07-23' AND '2018-09-30'
  GROUP BY
      week_number
) t
LEFT JOIN 
(SELECT 		
		festival_name,	
		EXTRACT (week FROM festivals.festival_date) AS festival_week
	FROM 
		festivals
	WHERE
		festival_city = 'Москва'
	  AND CAST(festivals.festival_date AS date) BETWEEN '2018-07-23' AND '2018-09-30'
) t2 
ON 
	t.week_number = t2.festival_week
) AS T;