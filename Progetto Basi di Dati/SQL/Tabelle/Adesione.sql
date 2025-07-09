CREATE TABLE Adesione (
    UsernameUtente VARCHAR(100) NOT NULL,
    IdSessionePresenza INTEGER NOT NULL,

    CONSTRAINT PK_Adesione PRIMARY KEY (UsernameUtente, IdSessionePresenza), -- chiave primaria composta
    CONSTRAINT FK_Adesione_Utente FOREIGN KEY (UsernameUtente) REFERENCES Utente(Username) ON DELETE CASCADE, -- foreign key verso Utente, su eliminazione di un utente elimina tutte le sue adesioni
    CONSTRAINT FK_Adesione_SessionePresenza FOREIGN KEY (IdSessionePresenza) REFERENCES SessioneInPresenza(IdSessione) ON DELETE CASCADE -- foreign key verso SessioneInPresenza, su eliminazione di una sessione elimina tutte le adesioni ad essa collegate
)