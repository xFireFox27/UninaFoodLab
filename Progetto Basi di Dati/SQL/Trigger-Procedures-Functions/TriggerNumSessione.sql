CREATE OR REPLACE FUNCTION ControlloNumSessione()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
DECLARE
    MaxNumSessioni INT;
    SessioniEsistenti INT;
BEGIN
    -- Conta tutte le sessioni esistenti per questo corso
    SELECT COUNT(*) INTO SessioniEsistenti
    FROM (
        SELECT IdCorso FROM SessioneOnline WHERE IdCorso = NEW.IdCorso
        UNION
        SELECT IdCorso FROM SessioneInPresenza WHERE IdCorso = NEW.IdCorso
    );

    -- Se non ci sono sessioni esistenti, deve essere la prima
    IF SessioniEsistenti = 0 THEN
        IF NEW.NumSessione <> 1 THEN
            RAISE EXCEPTION 'Il numero di sessione % non può essere diverso da 1 per la prima sessione del corso %',
                NEW.NumSessione, NEW.IdCorso;
        END IF;
        RETURN NEW;
    END IF;

    -- Trova il numero massimo di sessione esistente da entrambe le tabelle
    SELECT MAX(NumSessione) INTO MaxNumSessioni
    FROM (
        SELECT NumSessione FROM SessioneOnline WHERE IdCorso = NEW.IdCorso
        UNION
        SELECT NumSessione FROM SessioneInPresenza WHERE IdCorso = NEW.IdCorso
    );

    -- Controlla che il nuovo numero sia il successivo
    IF NEW.NumSessione <= MaxNumSessioni THEN
        RAISE EXCEPTION 'Il numero di sessione % non può essere minore o uguale al numero dell''ultima sessione % per il corso %',
            NEW.NumSessione, MaxNumSessioni, NEW.IdCorso;
    ELSIF NEW.NumSessione > MaxNumSessioni + 1 THEN
        RAISE EXCEPTION 'Il numero di sessione % non può essere maggiore di % per il corso %',
            NEW.NumSessione, MaxNumSessioni + 1, (SELECT Titolo FROM Corso WHERE idCorso = NEW.IdCorso);
    END IF;

    RETURN NEW;
END;
$$;

-- Trigger per SessioneOnline 
CREATE TRIGGER TR_Insert_NumSessione_Online
BEFORE INSERT ON SessioneOnline
FOR EACH ROW
EXECUTE FUNCTION ControlloNumSessione();

-- Trigger per SessioneInPresenza 
CREATE TRIGGER TR_Insert_NumSessione_Presenza
BEFORE INSERT ON SessioneInPresenza
FOR EACH ROW
EXECUTE FUNCTION ControlloNumSessione();