CREATE TABLE Corso (
    idCorso VARCHAR(1000) PRIMARY KEY,
    Titolo VARCHAR(50) NOT NULL,
    Frequenza VARCHAR(50) DEFAULT 'Settimanale',
    NumLezioni Integer NOT NULL,
    Anno Integer NOT NULL,
    DataInizio Date NOT NULL,
    IdTopic VARCHAR(1000) NOT NULL,
    UsernameChef VARCHAR(100) NOT NULL,

    CONSTRAINT FK_Corso_Topic FOREIGN KEY (IdTopic) REFERENCES Topic(idTopic),
    CONSTRAINT FK_Corso_Chef FOREIGN KEY (UsernameChef) REFERENCES Chef(Username),
    CONSTRAINT CK_Frequenza CHECK (Frequenza IN ('Settimanale', 'Ogni giorno', 'Ogni due giorni', 'Ogni tre giorni'))
)