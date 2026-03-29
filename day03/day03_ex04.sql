(SELECT pizzeria.name as pizzeria_name
FROM person_order po
	JOIN menu ON menu.id=po.menu_id
	JOIN pizzeria ON pizzeria.id=menu.pizzeria_id
	JOIN person ON person.id=po.person_id
WHERE person.gender='female'
EXCEPT
SELECT pizzeria.name as pizzeria_name
FROM person_order po
	JOIN menu ON menu.id=po.menu_id
	JOIN pizzeria ON pizzeria.id=menu.pizzeria_id
	JOIN person ON person.id=po.person_id
WHERE person.gender='male'
)

UNION

(SELECT pizzeria.name as pizzeria_name
FROM person_order po
	JOIN menu ON menu.id=po.menu_id
	JOIN pizzeria ON pizzeria.id=menu.pizzeria_id
	JOIN person ON person.id=po.person_id
WHERE person.gender='male'
EXCEPT
SELECT pizzeria.name as pizzeria_name
FROM person_order po
	JOIN menu ON menu.id=po.menu_id
	JOIN pizzeria ON pizzeria.id=menu.pizzeria_id
	JOIN person ON person.id=po.person_id
WHERE person.gender='female'
)
ORDER BY 1