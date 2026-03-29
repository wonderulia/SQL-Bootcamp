WITH visit_counts AS (
    SELECT pizzeria.name AS name, COUNT(*) AS visit_count
    FROM person_visits
    JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
    GROUP BY pizzeria.name),
    
	order_counts AS (
    SELECT pizzeria.name AS name, COUNT(*) AS order_count
    FROM person_order
    JOIN menu ON person_order.menu_id = menu.id
    JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
    GROUP BY pizzeria.name)

SELECT COALESCE(visit_counts.name, order_counts.name) AS name,
       COALESCE(visit_count, 0) + COALESCE(order_count, 0) AS total_count
FROM visit_counts
FULL OUTER JOIN order_counts ON visit_counts.name = order_counts.name
ORDER BY total_count DESC, name ASC;