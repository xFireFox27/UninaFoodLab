CREATE OR REPLACE FUNCTION ControlloAdesioniCorso()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
DECLARE
    IdCorso INTEGER;
BEGIN
    SELECT sip.IdCorso INTO IdCorso
    FROM SessioneInPresenza AS sip
    WHERE sip.IdCorso = NEW.IdCorso;

    IF IdCorso IS NULL THEN
        RAISE EXCEPTION 'Il corso con ID % non esiste.', NEW.IdCorso;
    END IF;

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