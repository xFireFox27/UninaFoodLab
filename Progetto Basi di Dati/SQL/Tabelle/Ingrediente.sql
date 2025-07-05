CREATE TABLE Ingrediente (
    IdIngrediente VARCHAR(1000) PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Allergene BOOLEAN NOT NULL,
    UnitàMisura VARCHAR(50) NOT NULL
)