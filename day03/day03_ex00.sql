SELECT menu.pizza_name AS pizza_name, menu.price AS price,
	   pz.name AS pizzeria_name,
	   pv.visit_date AS visit_date
FROM menu
JOIN pizzeria as pz ON menu.pizzeria_id=pz.id
JOIN person_visits as pv ON pz.id=pv.pizzeria_id
JOIN person as p ON pv.person_id=p.id
WHERE price BETWEEN 800 AND 1000
	  AND p.name='Kate'
ORDER BY 1,2,3