### Выпускной проект ###

*Сфера деятельности* – оператор связи.

*Входные данные* – информация о клиентах.

*Задача* – прогнозирование оттока клиентов из компании.

*Результат* - проведен исследовательский анализ данных
Первоначально проведен [исследовательский анализ данных](https://github.com/Cation73/yandex_praktikum/blob/master/15-final-project-last/EDA-for-telecom-provider.ipynb), спланирован дальнейший план построения модели.
В [следующем этапе](https://github.com/Cation73/yandex_praktikum/blob/master/15-final-project-last/ml-task-for-telecom-provider.ipynb) подготовлены данные, сгенерированы новые признаки.
Выбраны модели машинного обучения: логистическая регрессия, решающее дерево, случайный лес, градиентный бустинг, многослойный перцептрон. Для каждой модели подобраны гиперпараметры рандомизированным поиском по сетке.
Собран ансамбль Voting из всех обученных моделей. Метрики качества - AUC ROC.
В качестве [дополнительного задания](https://github.com/Cation73/yandex_praktikum/blob/master/15-final-project-last/extra-tast-telecom-provider.ipynb) проработаны способы удержания клиентов.

*Библиотеки: pandas, numpy, seaborn, matplotlib, datetime, sklearn, xgboost, imblearn.over_sampling.*






