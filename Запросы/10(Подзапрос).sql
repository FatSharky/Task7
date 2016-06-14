SELECT DISTINCT
concat(hr.surname,' ', hr.name,' ', hr.secondName) as fio,
vacancy.name
FROM company join hr on company.company_login = hr.company_login
join vacancy on hr.email = vacancy.email
join verify on vacancy.id_vacancy = verify.id_vacancy

WHERE
 1<(SELECT COUNT(id_verify) FROM verify WHERE id_verify = id_verify)
 and company.name="Revengers"