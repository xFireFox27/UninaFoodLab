CREATE TABLE Riceve (
    IdNotifica INTEGER NOT NULL,
    UsernameUtente VARCHAR(100) NOT NULL,

    CONSTRAINT PK_Riceve PRIMARY KEY (IdNotifica, UsernameUtente), -- chiave primaria composta
    CONSTRAINT FK_Riceve_Notifica FOREIGN KEY (IdNotifica) REFERENCES Notifica(IdNotifica) ON DELETE CASCADE, -- foreign key verso Notifica, su eliminazione di una notifica elimina tutte le ricezioni ad essa collegate
    CONSTRAINT FK_Riceve_Utente FOREIGN KEY (UsernameUtente) REFERENCES Utente(Username) ON DELETE CASCADE -- foreign key verso Utente, su eliminazione di un utente elimina tutte le sue ricezioni
)