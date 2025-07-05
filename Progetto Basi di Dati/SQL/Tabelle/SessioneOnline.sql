CREATE TABLE SessioneOnline (
    IdSessione VARCHAR(1000) PRIMARY KEY,
    Link VARCHAR(1000) NOT NULL, 
    Data TIMESTAMP NOT NULL,
    Durata Integer NOT NULL,
    NumSessione Integer NOT NULL,
    IdCorso VARCHAR(1000) NOT NULL,

    CONSTRAINT FK_SessioneOnline_Corso FOREIGN KEY (IdCorso) REFERENCES Corso(idCorso)
)