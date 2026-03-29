SELECT person.name as person_name1, 
	   p_cte.name as person_name2,
	   person.address as common_address
FROM person
JOIN person p_cte ON person.address=p_cte.address 
					   AND person.id>p_cte.id
ORDER BY 1,2,3