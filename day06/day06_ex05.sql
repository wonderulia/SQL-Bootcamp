COMMENT ON TABLE person_discounts IS 'This table stores discount information applied to customers at specific pizzerias.';
COMMENT ON COLUMN person_discounts.id IS 'Primary key for person_discounts table, uniquely identifying each discount record.';
COMMENT ON COLUMN person_discounts.person_id IS 'Foreign key referring to the person receiving the discount.';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Foreign key referring to the pizzeria offering the discount.';
COMMENT ON COLUMN person_discounts.discount IS 'The discount percentage offered, ranging from 0 to 100.';