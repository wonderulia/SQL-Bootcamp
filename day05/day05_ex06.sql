DROP INDEX idx_1;
SET enable_seqscan = off;
EXPLAIN ANALYZE
SELECT menu.pizza_name AS pizza_name,
       max(rating) OVER (PARTITION BY rating ORDER BY rating ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS k
FROM menu
INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
ORDER BY 1,2;

CREATE INDEX idx_1 ON pizzeria(rating);
SET enable_seqscan = off;
EXPLAIN ANALYZE
SELECT menu.pizza_name AS pizza_name,
       max(rating) OVER (PARTITION BY rating ORDER BY rating ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS k
FROM menu
INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
ORDER BY 1,2;