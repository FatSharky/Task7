SELECT vacancy.name, salary, currency
FROM vacancy
WHERE salary>120 and currency="dolar"

UNION

SELECT vacancy.name, salary, currency
FROM vacancy
WHERE salary>2400000 and currency="rub"