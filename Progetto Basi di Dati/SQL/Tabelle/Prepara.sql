CREATE TABLE Prepara (
    IdSessionePresenza INTEGER NOT NULL,
    IdRicetta INTEGER NOT NULL,

    CONSTRAINT PK_Prepara PRIMARY KEY (IdSessionePresenza, IdRicetta), -- chiave primaria composta
    CONSTRAINT FK_Prepara_SessionePresenza FOREIGN KEY (IdSessionePresenza) REFERENCES SessioneInPresenza(IdSessione) ON DELETE CASCADE, -- foreign key verso SessioneInPresenza, su eliminazione di una sessione elimina tutte le preparazioni ad essa collegate
    CONSTRAINT FK_Prepara_Ricetta FOREIGN KEY (IdRicetta) REFERENCES Ricetta(IdRicetta) --foreign key verso Ricetta
)