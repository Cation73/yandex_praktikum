### Численные методы ###

*Сфера деятельности* – сервис продажи автомобилей с пробегом. 

*Входные данные* – информация о машине и цена. 

*Задача* – построить модель, которая сможет определить стоимость автомобиля. 

*Результат* - изучен и подготовлен набор данных. Исходя из требований заказчика выбраны модели градиентого бустинга, 
а именно: CatBoost, LightGBM и XGBoost. Для каждой из моделей найдены гиперпараметры с помощью рандомизированного поиска по сетке.
По совокупности метрики качества, времени обучения и предсказания выбрана наилучшая модель.

*Библиотеки: pandas, numpy, sklearn, catboost, lightgbm, xgboost, time.*




