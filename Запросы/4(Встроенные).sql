SELECT vacancy.name, concat(applicant.surname,' ', applicant.name,' ', applicant.secondName) as fio
FROM applicant join resume ON applicant.email = resume.email
join verify on resume.id_resume = verify.id_resume
join vacancy on vacancy.id_vacancy = verify.id_vacancy
join hr on hr.email = vacancy.email 
join company on company.company_login = hr.company_login
WHERE 
company.name = "Iknow"