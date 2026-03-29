SELECT pizzeria.name AS pizzeria_name
FROM person_visits pv
	 JOIN person ON pv.person_id = person.id
	 JOIN pizzeria ON pv.pizzeria_id = pizzeria.id
WHERE person.name = 'Andrey'

EXCEPT

SELECT pizzeria.name AS pizzeria_name
FROM person_order po
	 JOIN menu ON menu.id=po.menu_id
	 JOIN person on person.id=po.person_id
	 JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE person.name = 'Andrey'