CREATE TABLE Composizione (
    IdIngrediente VARCHAR(1000) NOT NULL,
    IdRicetta VARCHAR(1000) NOT NULL,
    Quantità FLOAT NOT NULL,

    CONSTRAINT PK_Composizione PRIMARY KEY (IdIngrediente, IdRicetta),
    CONSTRAINT FK_Composizione_Ingrediente FOREIGN KEY (IdIngrediente) REFERENCES Ingrediente(IdIngrediente),
    CONSTRAINT FK_Composizione_Ricetta FOREIGN KEY (IdRicetta) REFERENCES Ricetta(IdRicetta)
)