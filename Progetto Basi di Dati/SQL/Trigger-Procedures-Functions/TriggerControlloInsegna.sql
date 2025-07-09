CREATE OR REPLACE FUNCTION ControlloInsegna()
RETURNS TRIGGER 
LANGUAGE plpgsql
AS $$
BEGIN
    -- Controlla se lo Chef insegna il Topic del Corso
    IF NOT EXISTS (
        SELECT 1
        FROM Insegna AS i
        WHERE NEW.IdTopic = i.IdTopic
        AND i.UsernameChef = NEW.UsernameChef
    ) THEN RAISE EXCEPTION 'Lo Chef % non insegna il Topic %, è quindi impossibilitato a creare il corso.',
         NEW.UsernameChef, (SELECT t.Nome FROM Topic AS t WHERE t.IdTopic = NEW.IdTopic);
    END IF;
    RETURN NEW;
END;
$$;







CREATE TRIGGER Tr_Insert_Corso_Topic
AFTER INSERT ON Corso
FOR EACH ROW
EXECUTE FUNCTION ControlloInsegna();