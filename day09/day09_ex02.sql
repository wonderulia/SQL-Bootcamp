-- Database Trigger Function for DELETE
CREATE OR REPLACE FUNCTION fnc_trg_person_delete_audit() RETURNS trigger AS $person_delete_audit$
BEGIN
    IF (TG_OP = 'DELETE') THEN
        INSERT INTO person_audit SELECT current_timestamp, 'D', OLD.*;
RETURN NEW;
END IF;
RETURN NULL;
END;
$person_delete_audit$ LANGUAGE plpgsql;

-- Database Trigger for DELETE
CREATE TRIGGER trg_person_delete_audit AFTER DELETE ON person
    FOR EACH ROW EXECUTE FUNCTION fnc_trg_person_delete_audit();

-- DELETE from person table
DELETE FROM person WHERE id = 10;