SELECT avg(salary) as averege_salary
FROM vacancy
WHERE
name LIKE "%ava%dev%"
and currency="dolar"
