SELECT pizzeria.name AS pizzeria_name
FROM person_visits
JOIN person ON person.id=person_visits.person_id
JOIN pizzeria ON person_visits.pizzeria_id=pizzeria.id
JOIN menu ON menu.pizzeria_id=person_visits.pizzeria_id
WHERE person.name='Dmitriy' and person_visits.visit_date='2022-01-08' and menu.price<800