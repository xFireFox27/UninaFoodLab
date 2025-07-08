CREATE OR REPLACE FUNCTION ControlloLimiteIscrizioni()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
DECLARE
    MaxNumeroIscrizioni INTEGER:= 50;
    NumeroIscrizioni INTEGER;
BEGIN
    SELECT COUNT(*) INTO NumeroIscrizioni
    FROM Iscrizione
    WHERE IdCorso = NEW.IdCorso;
    IF NumeroIscrizioni >= MaxNumeroIscrizioni THEN
        RAISE EXCEPTION 'Il numero massimo di iscrizioni per il corso % è stato raggiunto (% iscritti). Non è possibile aggiungere ulteriori iscrizioni.',
            NEW.IdCorso, NumeroIscrizioni;
    END IF;

    RETURN NEW;
END;
$$;

CREATE TRIGGER TR_Insert_Iscrizione
BEFORE INSERT ON Iscrizione
FOR EACH ROW
EXECUTE FUNCTION ControlloLimiteIscrizioni();