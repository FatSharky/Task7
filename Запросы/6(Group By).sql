SELECT vac.name, 
	extract(DAY from i.date_begin) as day,
	extract(HOUR_MINUTE from i.date_begin) as hour,
	concat(a.surname,' ', a.name,' ', a.secondName) as fio,
	i.type
FROM applicant as a join resume as r ON a.email = r.email
	join verify as v 
		on r.id_resume = v.id_resume
	join vacancy as vac 
		on vac.id_vacancy = v.id_vacancy
	join hr 
		on hr.email = vac.email 
	join company as c 
		on c.company_login = hr.company_login
	join interview as i 
		on v.id_verify = i.id_verify
WHERE 
	c.name = "Revengers" and  MONTH(date_begin) = MONTH(NOW()) AND YEAR(date_begin) = YEAR(NOW())
group by
	day,hour
