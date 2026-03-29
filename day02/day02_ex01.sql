SELECT missing_date::DATE
FROM (SELECT generate_series('2022-01-01', '2022-01-10', '1 day'::INTERVAL)
                                                            AS missing_date) AS all_dates
LEFT JOIN person_visits ON all_dates.missing_date = person_visits.visit_date 
						   AND (person_visits.person_id BETWEEN 1 AND 2)
WHERE (person_visits.visit_date IS NULL) 
ORDER BY missing_date ASC