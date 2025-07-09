CREATE OR REPLACE FUNCTION ControlloAdesioniCorso()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    -- Controlla se l'utente non è iscritto al corso e nel caso solleva un'eccezione
    IF NOT EXISTS (
        SELECT 1
        FROM Iscrizione AS i
        WHERE i.IdCorso = NEW.IdCorso
        AND i.UsernameUtente = NEW.UsernameUtente
    ) THEN
        RAISE EXCEPTION 'L''utente % non è iscritto al corso con ID %.', NEW.UsernameUtente, NEW.IdCorso;
    END IF;

    RETURN NEW;
END;
$$;

CREATE TRIGGER TR_Insert_Adesione
BEFORE INSERT ON Adesione
FOR EACH ROW
EXECUTE FUNCTION ControlloAdesioniCorso();