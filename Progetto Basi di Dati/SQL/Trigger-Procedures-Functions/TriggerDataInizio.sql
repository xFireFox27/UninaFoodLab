CREATE OR REPLACE FUNCTION ControllaDataInizio()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    -- Controlla che la data di inizio del corso sia maggiore o uguale alla data corrente
    IF NEW.DataInizio < CURRENT_DATE THEN
        RAISE EXCEPTION 'La data di inizio del corso non può essere nel passato: %', NEW.DataInizio;
    END IF;
    RETURN NEW;
END;
$$;


CREATE TRIGGER TR_Insert_DataInizio_Corso
BEFORE INSERT OR UPDATE ON Corso
FOR EACH ROW
EXECUTE FUNCTION ControllaDataInizio();