CREATE OR REPLACE FUNCTION ControlloAdesioniCorso()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
DECLARE
    corso_id INTEGER;
BEGIN
    -- Recupera l'IdCorso dalla sessione in presenza
    SELECT sip.IdCorso
    INTO corso_id
    FROM SessioneInPresenza AS sip
    WHERE sip.IdSessione = NEW.IdSessione;
    
    -- Controlla se l'utente non è iscritto al corso e nel caso solleva un'eccezione
    IF NOT EXISTS (
        SELECT 1
        FROM Iscrizione AS i
        WHERE i.IdCorso = corso_id
        AND i.UsernameUtente = NEW.UsernameUtente
    ) THEN
        RAISE EXCEPTION 'L''utente % non è iscritto al corso con ID %.', NEW.UsernameUtente, corso_id;
    END IF;

    RETURN NEW;
END;
$$;

CREATE TRIGGER TR_Insert_Adesione
BEFORE INSERT ON Adesione
FOR EACH ROW
EXECUTE FUNCTION ControlloAdesioniCorso();