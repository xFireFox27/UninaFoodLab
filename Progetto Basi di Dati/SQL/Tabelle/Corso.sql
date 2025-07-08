CREATE TABLE Corso (
    idCorso SERIAL PRIMARY KEY,
    Titolo VARCHAR(50) NOT NULL,
    Frequenza VARCHAR(50) DEFAULT 'Settimanale',
    NumLezioni Integer NOT NULL,
    Anno Integer NOT NULL,
    DataInizio Date NOT NULL,
    IdTopic INTEGER NOT NULL,
    UsernameChef VARCHAR(100) NOT NULL,

    CONSTRAINT FK_Corso_Topic FOREIGN KEY (IdTopic) REFERENCES Topic(idTopic),
    CONSTRAINT FK_Corso_Chef FOREIGN KEY (UsernameChef) REFERENCES Chef(Username) ON DELETE CASCADE,
    CONSTRAINT CK_Frequenza CHECK (Frequenza IN ('Settimanale', 'Ogni giorno', 'Ogni due giorni', 'Ogni tre giorni')),
    CONSTRAINT CK_NumLezioni CHECK (NumLezioni BETWEEN 1 AND 100)
)