CREATE OR REPLACE FUNCTION CalcoloNumeroAdesioni(idSessione INTEGER) -- funzione per calcolare il numero di adesioni a una sessione in presenza
RETURNS INTEGER
LANGUAGE plpgsql
AS $$
DECLARE
    numeroAdesioni INTEGER;
BEGIN
    SELECT COUNT(*) INTO numeroAdesioni
    FROM Adesione AS a
    WHERE a.idSessione = idSessione;
    IF numeroAdesioni = 0 THEN
        RAISE EXCEPTION 'Nessuna adesione trovata per la sessione con ID %', idSessione;
    END IF;
    RETURN numeroAdesioni;
END;
$$;