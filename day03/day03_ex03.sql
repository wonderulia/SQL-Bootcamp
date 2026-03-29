(SELECT pizzeria.name as pizzeria_name
FROM person_visits pv
	JOIN pizzeria ON pizzeria.id=pv.pizzeria_id
	JOIN person ON person.id=pv.person_id
WHERE person.gender='female'
EXCEPT ALL
SELECT pizzeria.name as pizzeria_name
FROM person_visits pv
	JOIN pizzeria ON pizzeria.id=pv.pizzeria_id
	JOIN person ON person.id=pv.person_id
WHERE person.gender='male'
)

UNION ALL

(SELECT pizzeria.name as pizzeria_name
FROM person_visits pv
	JOIN pizzeria ON pizzeria.id=pv.pizzeria_id
	JOIN person ON person.id=pv.person_id
WHERE person.gender='male'
EXCEPT ALL
SELECT pizzeria.name as pizzeria_name
FROM person_visits pv
	JOIN pizzeria ON pizzeria.id=pv.pizzeria_id
	JOIN person ON person.id=pv.person_id
WHERE person.gender='female'
)
ORDER BY 1