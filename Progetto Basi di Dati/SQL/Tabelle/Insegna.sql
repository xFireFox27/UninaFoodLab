CREATE TABLE Insegna (
    IdTopic INTEGER NOT NULL,
    UsernameChef VARCHAR(1000) NOT NULL, 

    CONSTRAINT PK_Insegna PRIMARY KEY (IdTopic, UsernameChef),
    CONSTRAINT FK_Insegna_Topic FOREIGN KEY (IdTopic) REFERENCES Topic(idTopic),
    CONSTRAINT FK_Insegna_Chef FOREIGN KEY (UsernameChef) REFERENCES Chef(Username) ON DELETE CASCADE
)