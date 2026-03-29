SELECT menu.pizza_name AS pizza_name,
       pizzeria.name  AS pizzeria_name
FROM person_order
JOIN menu ON person_order.menu_id = menu.id
JOIN person ON person.id = person_order.person_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE person.name IN ('Anna','Denis')
ORDER BY pizza_name, pizzeria_name