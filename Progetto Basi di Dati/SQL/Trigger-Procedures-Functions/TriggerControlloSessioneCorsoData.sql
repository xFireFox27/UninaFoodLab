CREATE OR REPLACE FUNCTION ControlloSessioneCorsoData()
RETURNS TRIGGER 
LANGUAGE plpgsql
AS $$
BEGIN
    -- Controlla che ogni sessione sia programmata in una data successiva all'inizio del corso
    IF NEW.Data < (SELECT DataInizio FROM Corso WHERE IdCorso = NEW.IdCorso) THEN
        RAISE EXCEPTION 'La data della sessione deve essere successiva alla data di inizio del corso';
    END IF;
    RETURN NEW;
END;
$$;


CREATE TRIGGER TR_Insert_Data_Sessione_In_Presenza_con_Corso
BEFORE INSERT OR UPDATE ON SessioneInPresenza
FOR EACH ROW
EXECUTE FUNCTION ControlloSessioneCorsoData();

CREATE TRIGGER TR_Insert_Data_Sessione_Online_con_Corso
BEFORE INSERT OR UPDATE ON SessioneOnline
FOR EACH ROW
EXECUTE FUNCTION ControlloSessioneCorsoData();