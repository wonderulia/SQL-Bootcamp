SELECT menu.pizza_name as pizza_name, menu.price as price,
	   pizzeria.name as pizzeria_name
FROM menu
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE NOT EXISTS (SELECT po.menu_id FROM person_order po WHERE po.menu_id=menu.id ) 
ORDER BY 1,2