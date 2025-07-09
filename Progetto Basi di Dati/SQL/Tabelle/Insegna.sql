CREATE TABLE Insegna (
    IdTopic INTEGER NOT NULL,
    UsernameChef VARCHAR(1000) NOT NULL, 

    CONSTRAINT PK_Insegna PRIMARY KEY (IdTopic, UsernameChef), -- chiave primaria composta
    CONSTRAINT FK_Insegna_Topic FOREIGN KEY (IdTopic) REFERENCES Topic(idTopic), -- foreign key verso Topic
    CONSTRAINT FK_Insegna_Chef FOREIGN KEY (UsernameChef) REFERENCES Chef(Username) ON DELETE CASCADE -- foreign key verso Chef, su eliminazione di un chef elimina tutte le relative righe in Insegna
)