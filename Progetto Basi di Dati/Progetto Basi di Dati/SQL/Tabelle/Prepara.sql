CREATE TABLE Prepara (
    IdSessionePresenza INTEGER NOT NULL,
    IdRicetta INTEGER NOT NULL,

    CONSTRAINT PK_Prepara PRIMARY KEY (IdSessionePresenza, IdRicetta),
    CONSTRAINT FK_Prepara_SessionePresenza FOREIGN KEY (IdSessionePresenza) REFERENCES SessioneInPresenza(IdSessione) ON DELETE CASCADE,
    CONSTRAINT FK_Prepara_Ricetta FOREIGN KEY (IdRicetta) REFERENCES Ricetta(IdRicetta)
)