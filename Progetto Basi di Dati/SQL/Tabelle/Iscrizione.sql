CREATE TABLE Iscrizione (
    IdCorso VARCHAR(1000) NOT NULL,
    UsernameUtente VARCHAR(100) NOT NULL,
    DataIscrizione TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT PK_Iscrizione PRIMARY KEY (IdCorso, UsernameUtente),
    CONSTRAINT FK_Iscrizione_Corso FOREIGN KEY (IdCorso) REFERENCES Corso(idCorso),
    CONSTRAINT FK_Iscrizione_Utente FOREIGN KEY (UsernameUtente) REFERENCES Utente(Username)
)