CREATE VIEW v_price_with_discount AS
SELECT person.name,
	   menu.pizza_name as pizza_name, menu.price as price,
	   CAST((menu.price-menu.price*0.1) as INT) as discount_price
FROM person_order as po
JOIN person ON person.id=po.person_id
JOIN menu ON menu.id=po.menu_id
ORDER BY 1,2