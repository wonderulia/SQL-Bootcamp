(SELECT pizzeria.name as name, COUNT(*) as count, 'order' AS action_type
FROM person_order
JOIN menu ON person_order.menu_id=menu.id
JOIN pizzeria ON menu.pizzeria_id=pizzeria.id
GROUP BY name
ORDER BY 2 DESC
LIMIT 3)
UNION
(SELECT pizzeria.name as name, COUNT(*) as count, 'visit' AS action_type
FROM person_visits
JOIN pizzeria ON person_visits.pizzeria_id=pizzeria.id
GROUP BY name
ORDER BY 2 DESC
LIMIT 3)
ORDER BY 3 ASC, 2 DESC;