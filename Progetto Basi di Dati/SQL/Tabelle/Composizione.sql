CREATE TABLE Composizione (
    IdIngrediente INTEGER NOT NULL,
    IdRicetta INTEGER NOT NULL,
    Quantità FLOAT NOT NULL,

    CONSTRAINT PK_Composizione PRIMARY KEY (IdIngrediente, IdRicetta), -- chiave primaria composta
    CONSTRAINT FK_Composizione_Ingrediente FOREIGN KEY (IdIngrediente) REFERENCES Ingrediente(IdIngrediente), -- foreign key verso Ingrediente
    CONSTRAINT FK_Composizione_Ricetta FOREIGN KEY (IdRicetta) REFERENCES Ricetta(IdRicetta), -- foreign key verso Ricetta
    CONSTRAINT CK_Quantità_Positiva CHECK (Quantità > 0) -- controllo quantità ingrediente positiva
)