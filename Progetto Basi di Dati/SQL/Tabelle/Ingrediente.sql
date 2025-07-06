CREATE TABLE Ingrediente (
    IdIngrediente SERIAL PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL UNIQUE,
    Allergene BOOLEAN NOT NULL,
    UnitàMisura VARCHAR(50) NOT NULL
)