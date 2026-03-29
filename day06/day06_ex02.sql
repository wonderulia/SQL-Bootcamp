SELECT person.name as name,
	   menu.pizza_name as pizza_name,
	   menu.price as price,
	   CAST((menu.price-menu.price*(person_discounts.discount/100)) as INT) as discount_price,
	   pizzeria.name as pizzeria_name
FROM person_discounts
JOIN person ON person_discounts.person_id=person.id
JOIN menu ON person_discounts.pizzeria_id=menu.pizzeria_id
JOIN pizzeria ON person_discounts.pizzeria_id=pizzeria.id
ORDER BY 1,2;