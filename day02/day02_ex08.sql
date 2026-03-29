SELECT person.name
FROM person_order
JOIN person ON person.id=person_order.person_id
JOIN menu ON menu.id=person_order.menu_id
WHERE person.gender='male' 
	  and person.address IN ('Moscow','Samara')
	  and menu.pizza_name IN ('pepperoni pizza','mushroom pizza')
ORDER BY 1 DESC