-- Trigger per controllare username unico tra Chef e Utente

-- Function per verificare username unico per Chef
CREATE OR REPLACE FUNCTION check_chef_username_unique()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (SELECT 1 FROM Utente WHERE Username = NEW.Username) THEN
        RAISE EXCEPTION 'Username % già esistente!', NEW.Username;
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Function per verificare username unico per Utente
CREATE OR REPLACE FUNCTION check_utente_username_unique()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (SELECT 1 FROM Chef WHERE Username = NEW.Username) THEN
        RAISE EXCEPTION 'Username % già esistente!', NEW.Username;
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger per Chef
CREATE TRIGGER trigger_chef_username_unique
    BEFORE INSERT OR UPDATE ON Chef
    FOR EACH ROW
    EXECUTE FUNCTION check_chef_username_unique();

-- Trigger per Utente
CREATE TRIGGER trigger_utente_username_unique
    BEFORE INSERT OR UPDATE ON Utente
    FOR EACH ROW
    EXECUTE FUNCTION check_utente_username_unique();