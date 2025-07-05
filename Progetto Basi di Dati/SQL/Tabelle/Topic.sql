-- Create a new table 'TableName' with a primary key and columns
CREATE TABLE Topic (
    idTopic VARCHAR(1000) PRIMARY KEY,
    Nome VARCHAR(1000) NOT NULL,
    Descrizione VARCHAR(1000),

    CONSTRAINT CK_Topic_Nome CHECK (Nome IN ('Cucina Italiana', 'Pizza Napoletana', 'Cucina Cinese', 
    'Cucina Messicana', 'Cucina Giapponese', 'Cucina Indiana', 'Cucina Francese', 
    'Cucina Spagnola', 'Cucina Americana', 'Cucina Mediterranea', 'Pasticceria', 'Panificazione'))
);