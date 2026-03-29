DROP VIEW v_generated_dates
CREATE VIEW v_generated_dates AS
SELECT january::DATE as generated_date
FROM generate_series('2022-01-01', '2022-01-31', '1 day'::INTERVAL) AS january
ORDER BY 1;