SELECT COALESCE(person.name, '-') AS person_name,
       date.visit_date AS visit_date,
	   COALESCE(pizzeria.name, '-') AS pizzeria_name
FROM (SELECT * FROM person_visits WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS date
FULL JOIN person ON date.person_id = person.id
FULL JOIN pizzeria ON date.pizzeria_id = pizzeria.id
ORDER BY person_name, visit_date, pizzeria_name