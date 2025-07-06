CREATE TABLE Riceve (
    IdNotifica INTEGER NOT NULL,
    UsernameUtente VARCHAR(100) NOT NULL,

    CONSTRAINT PK_Riceve PRIMARY KEY (IdNotifica, UsernameUtente),
    CONSTRAINT FK_Riceve_Notifica FOREIGN KEY (IdNotifica) REFERENCES Notifica(IdNotifica) ON DELETE CASCADE,
    CONSTRAINT FK_Riceve_Utente FOREIGN KEY (UsernameUtente) REFERENCES Utente(Username) ON DELETE CASCADE
)