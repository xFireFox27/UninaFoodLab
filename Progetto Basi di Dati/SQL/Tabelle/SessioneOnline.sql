CREATE TABLE SessioneOnline (
    IdSessione SERIAL PRIMARY KEY,
    Link VARCHAR(1000) NOT NULL, 
    Data TIMESTAMP NOT NULL,
    Durata Integer NOT NULL,
    NumSessione Integer NOT NULL,
    IdCorso INTEGER NOT NULL,

    CONSTRAINT FK_SessioneOnline_Corso FOREIGN KEY (IdCorso) REFERENCES Corso(idCorso) ON DELETE CASCADE, -- foreign key verso Corso, su eliminazione di un corso elimina tutte le sue sessioni online
    CONSTRAINT CK_Link CHECK (Link LIKE 'https://%'), -- controllo che il link abbia un formato valido
    CONSTRAINT CK_Durata CHECK (Durata >= 60 AND Durata <= 180) -- controllo che la durata sia compresa tra 60 e 180 minuti
)