CREATE OR REPLACE FUNCTION ControlloLimiteIscrizioni()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
DECLARE
    MaxNumeroIscrizioni INTEGER:= 50;
    NumeroIscrizioni INTEGER;
BEGIN
    SELECT COUNT(*) INTO NumeroIscrizioni -- Conta il numero di iscritti al corso
    FROM Iscrizione
    WHERE IdCorso = NEW.IdCorso;
    
    -- se il numero di iscrizioni supera il limite(ovvero 50), solleva un'eccezione
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