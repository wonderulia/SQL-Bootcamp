SELECT pizzeria.name as name, count(*) as count_of_orders,
       round(avg(menu.price),2) as average_price,
       max(menu.price) as max_price,
       min(menu.price) as min_price
FROM person_order
JOIN menu ON person_order.menu_id=menu.id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
GROUP BY name
ORDER BY 1;