CREATE TABLE Composizione (
    IdIngrediente INTEGER NOT NULL,
    IdRicetta INTEGER NOT NULL,
    Quantità FLOAT NOT NULL,

    CONSTRAINT PK_Composizione PRIMARY KEY (IdIngrediente, IdRicetta),
    CONSTRAINT FK_Composizione_Ingrediente FOREIGN KEY (IdIngrediente) REFERENCES Ingrediente(IdIngrediente),
    CONSTRAINT FK_Composizione_Ricetta FOREIGN KEY (IdRicetta) REFERENCES Ricetta(IdRicetta),
    CONSTRAINT CK_Quantità_Positiva CHECK (Quantità > 0)
)