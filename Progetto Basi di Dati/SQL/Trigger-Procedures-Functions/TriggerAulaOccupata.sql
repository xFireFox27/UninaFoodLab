CREATE OR REPLACE FUNCTION ControlloAulaOccupata() 
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
IF EXISTS (
        SELECT 1
        FROM SessioneInPresenza AS sip
        WHERE sip.Luogo = NEW.Luogo 
        AND sip.Aula = NEW.Aula
            -- La nuova sessione inizia durante una sessione esistente
        AND (NEW.Data >= sip.Data AND NEW.Data < sip.Data + (sip.Durata  ' minutes')::INTERVAL)
            -- La nuova sessione finisce durante una sessione esistente
            OR (NEW.Data + (NEW.Durata  ' minutes')::INTERVAL > sip.Data AND NEW.Data + (NEW.Durata  ' minutes')::INTERVAL <= sip.Data + (sip.Durata  ' minutes')::INTERVAL)
            -- La nuova sessione contiene completamente una sessione esistente
            OR (NEW.Data <= sip.Data AND NEW.Data + (NEW.Durata  ' minutes')::INTERVAL >= sip.Data + (sip.Durata  ' minutes')::INTERVAL)
    ) THEN RAISE EXCEPTION 'L''aula % è occupata in data %', 
            NEW.Aula, NEW.Data;
    END IF;
END;
$$;

CREATE TRIGGER Tr_Insert_Aula_Sessione_Presenza
BEFORE INSERT OR UPDATE ON SessioneInPresenza
FOR EACH ROW 
EXECUTE FUNCTION ControlloAulaOccupata();