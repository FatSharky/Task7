SELECT vacancy.name , salary
FROM vacancy
WHERE salary = ( SELECT Max(salary) from vacancy) 
and currency = "rub"