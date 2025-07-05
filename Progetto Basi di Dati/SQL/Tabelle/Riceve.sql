CREATE TABLE Riceve (
    IdNotifica VARCHAR(1000) NOT NULL,
    UsernameUtente VARCHAR(1000) NOT NULL,

    CONSTRAINT PK_Riceve PRIMARY KEY (IdNotifica, UsernameUtente),
    CONSTRAINT FK_Riceve_Notifica FOREIGN KEY (IdNotifica) REFERENCES Notifica(IdNotifica),
    CONSTRAINT FK_Riceve_Utente FOREIGN KEY (UsernameUtente) REFERENCES Utente(Username)
)