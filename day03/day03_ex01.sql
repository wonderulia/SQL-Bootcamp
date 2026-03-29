SELECT id as menu_id
FROM menu 
WHERE NOT EXISTS (SELECT po.menu_id FROM person_order po WHERE po.menu_id=menu.id ) 
ORDER BY 1