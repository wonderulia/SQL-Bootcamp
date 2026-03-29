SELECT list.object_name
FROM   (SELECT pizza_name AS object_name, '2' as CTE
		FROM menu
		UNION
		SELECT name AS object_name, '1' as CTE
		FROM person
		ORDER BY CTE, object_name) as LIST