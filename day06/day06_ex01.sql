INSERT INTO person_discounts (id, person_id, pizzeria_id, discount)
SELECT ROW_NUMBER() OVER() as id,
	   person_id, pizzeria_id,
       case when count(*) = 1 then 10.5
            when count(*) = 2 then 22
            else 30
		end discount
FROM person_order
JOIN menu ON person_order.menu_id = menu.id
GROUP BY person_id, pizzeria_id;