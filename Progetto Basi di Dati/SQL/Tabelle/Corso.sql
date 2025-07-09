CREATE TABLE Corso (
    idCorso SERIAL PRIMARY KEY,
    Titolo VARCHAR(50) NOT NULL,
    Frequenza VARCHAR(50) DEFAULT 'Settimanale',
    NumLezioni Integer NOT NULL,
    Anno Integer NOT NULL, 
    DataInizio Date NOT NULL,
    IdTopic INTEGER NOT NULL,
    UsernameChef VARCHAR(100) NOT NULL,

    CONSTRAINT FK_Corso_Topic FOREIGN KEY (IdTopic) REFERENCES Topic(idTopic), -- foreign key verso Topic
    CONSTRAINT FK_Corso_Chef FOREIGN KEY (UsernameChef) REFERENCES Chef(Username) ON DELETE CASCADE, -- foreign key verso Chef, su eliminazione di un chef elimina tutti i suoi corsi
    CONSTRAINT CK_Frequenza CHECK (Frequenza IN ('Settimanale', 'Ogni giorno', 'Ogni due giorni', 'Ogni tre giorni')), -- controllo che la frequenza del corso sia un valore valido
    CONSTRAINT CK_NumLezioni CHECK (NumLezioni BETWEEN 1 AND 100), -- controllo che il numero di lezioni sia compreso tra 1 e 100
    CONSTRAINT CK_Anno CHECK (Anno = EXTRACT(YEAR FROM DataInizio)) -- controllo che l'anno sia uguale all'anno di inizio
) 