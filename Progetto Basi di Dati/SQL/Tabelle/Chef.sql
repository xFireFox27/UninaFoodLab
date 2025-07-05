-- Create a new table 'TableName' with a primary key and columns
CREATE TABLE Chef (
    Nome VARCHAR(1000) NOT NULL,
    Cognome VARCHAR(1000) NOT NULL,
    Username VARCHAR(1000) PRIMARY KEY,
    Password VARCHAR(1000) NOT NULL,
);