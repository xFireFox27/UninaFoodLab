CREATE TABLE SessioneOnline (
    IdSessione SERIAL PRIMARY KEY,
    Link VARCHAR(1000) NOT NULL, 
    Data TIMESTAMP NOT NULL,
    Durata Integer NOT NULL,
    NumSessione Integer NOT NULL,
    IdCorso INTEGER NOT NULL,

    CONSTRAINT FK_SessioneOnline_Corso FOREIGN KEY (IdCorso) REFERENCES Corso(idCorso) ON DELETE CASCADE,
    CONSTRAINT CK_Link CHECK (Link LIKE 'https://%')
)