CREATE OR REPLACE FUNCTION ControlloSovrapposizione()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
DECLARE
    ChefUsername VARCHAR(100);
BEGIN
    -- Ottieni lo username del chef per il corso
    SELECT c.UsernameChef INTO ChefUsername
    FROM Corso AS c 
    WHERE c.idCorso = NEW.IdCorso;

    -- Controlla se esistono sovrapposizioni con le sessioni del chef
    IF EXISTS (
        SELECT 1
        FROM (
            -- seleziona data di inizio e fine delle sessioni online dello chef
            SELECT so.Data, so.Data + (so.Durata || ' minutes')::INTERVAL AS DataFine
            FROM SessioneOnline AS so
            JOIN Corso AS c ON so.IdCorso = c.idCorso
            WHERE c.UsernameChef = ChefUsername
            
            UNION ALL
            
            -- seleziona data di inizio e fine delle sessioni in presenza dello chef
            SELECT sip.Data, sip.Data + (sip.Durata || ' minutes')::INTERVAL AS DataFine
            FROM SessioneInPresenza AS sip
            JOIN Corso AS c ON sip.IdCorso = c.idCorso
            WHERE c.UsernameChef = ChefUsername
        ) AS SessioniEsistenti
        WHERE NEW.Data < DataFine 
        AND NEW.Data + (NEW.Durata || ' minutes')::INTERVAL > Data
    ) THEN
        RAISE EXCEPTION 'Lo chef % ha già una sessione programmata che si sovrappone con l''orario % - %.', 
            ChefUsername, NEW.Data, NEW.Data + (NEW.Durata || ' minutes')::INTERVAL;
    END IF;

    RETURN NEW;
END;
$$;

-- Trigger per SessioneOnline
CREATE TRIGGER TR_Controllo_Sovrapposizione_Online
BEFORE INSERT ON SessioneOnline
FOR EACH ROW
EXECUTE FUNCTION ControlloSovrapposizione();

-- Trigger per SessioneInPresenza
CREATE TRIGGER TR_Controllo_Sovrapposizione_Presenza
BEFORE INSERT ON SessioneInPresenza
FOR EACH ROW
EXECUTE FUNCTION ControlloSovrapposizione();