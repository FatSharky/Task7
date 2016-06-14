SELECT company.name
FROM company join hr on company.company_login = hr.company_login
join vacancy on hr.email = vacancy.email
WHERE vacancy.name IN (SELECT vacancy.name FROM vacancy WHERE vacancy.name LIKE "C#%")