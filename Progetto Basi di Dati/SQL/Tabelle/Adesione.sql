CREATE TABLE Adesione (
    UsernameUtente VARCHAR(100) NOT NULL,
    IdSessionePresenza VARCHAR(1000) NOT NULL,

    CONSTRAINT PK_Adesione PRIMARY KEY (UsernameUtente, IdSessionePresenza),
    CONSTRAINT FK_Adesione_Utente FOREIGN KEY (UsernameUtente) REFERENCES Utente(Username),
    CONSTRAINT FK_Adesione_SessionePresenza FOREIGN KEY (IdSessionePresenza) REFERENCES SessioneInPresenza(IdSessione)
)