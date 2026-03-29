SELECT person_order.order_date AS order_date,
       CONCAT (tp.name,' ','(age:', tp.age,')') AS person_information
FROM   person_order
NATURAL JOIN (SELECT id AS person_id, name, age FROM person) as tp
ORDER BY order_date ASC, person_information ASC