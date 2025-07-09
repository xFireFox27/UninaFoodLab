CREATE OR REPLACE FUNCTION ControlloDataSessione()
RETURNS TRIGGER 
LANGUAGE plpgsql
AS $$
BEGIN
    -- Controlla che la data della sessione sia maggiore o uguale alla data corrente
    IF NEW.Data < CURRENT_TIMESTAMP THEN
        RAISE EXCEPTION 'La sessione non può essere programmata per una data passata: %', NEW.Data;
    END IF;
    RETURN NEW;
END;
$$;

-- Trigger per sessioni online
CREATE TRIGGER TR_Insert_DataSessione_Online
BEFORE INSERT OR UPDATE ON SessioneOnline
FOR EACH ROW
EXECUTE FUNCTION ControlloDataSessione();

-- Trigger per sessioni in presenza
CREATE TRIGGER TR_Insert_DataSessione_Presenza
BEFORE INSERT OR UPDATE ON SessioneInPresenza
FOR EACH ROW
EXECUTE FUNCTION ControlloDataSessione();