CREATE TABLE Prepara (
    IdSessionePresenza VARCHAR(1000) NOT NULL,
    IdRicetta VARCHAR(1000) NOT NULL,

    CONSTRAINT PK_Prepara PRIMARY KEY (IdSessionePresenza, IdRicetta),
    CONSTRAINT FK_Prepara_SessionePresenza FOREIGN KEY (IdSessionePresenza) REFERENCES SessioneInPresenza(IdSessione),
    CONSTRAINT FK_Prepara_Ricetta FOREIGN KEY (IdRicetta) REFERENCES Ricetta(IdRicetta)
)