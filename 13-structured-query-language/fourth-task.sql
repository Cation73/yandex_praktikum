-- Установите фестивали, которые проходили с 23 июля по 30 сентября 2018 года в Москве, и номер недели, в которую они проходили. 
-- Выведите название фестиваля festival_name и номер недели festival_week.

SELECT
    festival_name,
    EXTRACT(week FROM festival_date) AS festival_week
FROM
    festivals
WHERE
    festival_city = 'Москва' AND CAST(festival_date AS date) BETWEEN '2018-07-23' AND '2018-09-30'