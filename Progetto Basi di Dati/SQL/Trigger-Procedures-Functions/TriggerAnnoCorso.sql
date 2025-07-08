CREATE OR REPLACE FUNCTION ControlloAnnoCorso()
RETURNS TRIGGER 
LANGUAGE plpgsql;
AS $$
BEGIN
    -- Controlla se l'anno del corso è compreso tra l'anno corrente e il prossimo
    IF NEW.Anno < EXTRACT(YEAR FROM CURRENT_DATE) OR
       NEW.Anno > EXTRACT(YEAR FROM CURRENT_DATE) +1 THEN
        RAISE EXCEPTION 'L''anno del corso deve essere compreso tra l''anno corrente e il prossimo.';
    END IF;
    RETURN NEW;
END;
$$


CREATE TRIGGER TriggerAnnoCorso
BEFORE INSERT OR UPDATE ON Corso
FOR EACH ROW
EXECUTE FUNCTION ControlloAnnoCorso();