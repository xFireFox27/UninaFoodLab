CREATE TABLE Adesione (
    UsernameUtente VARCHAR(100) NOT NULL,
    IdSessionePresenza INTEGER NOT NULL,

    CONSTRAINT PK_Adesione PRIMARY KEY (UsernameUtente, IdSessionePresenza),
    CONSTRAINT FK_Adesione_Utente FOREIGN KEY (UsernameUtente) REFERENCES Utente(Username) ON DELETE CASCADE,
    CONSTRAINT FK_Adesione_SessionePresenza FOREIGN KEY (IdSessionePresenza) REFERENCES SessioneInPresenza(IdSessione) ON DELETE CASCADE
)