CREATE OR REPLACE FUNCTION ControlloQuantità()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    -- Controlla che la quantità sia positiva
    IF NEW.Quantità <= 0 THEN
        RAISE EXCEPTION 'La quantità % deve essere maggiore di zero', NEW.Quantità;
    END IF;     

    RETURN NEW;
END;
$$;

CREATE TRIGGER TR_Insert_Qunatità
BEFORE INSERT OR UPDATE ON Composizione
FOR EACH ROW
EXECUTE FUNCTION ControlloQuantità();