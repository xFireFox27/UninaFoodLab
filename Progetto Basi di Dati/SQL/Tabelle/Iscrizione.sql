CREATE TABLE Iscrizione (
    IdCorso INTEGER NOT NULL,
    UsernameUtente VARCHAR(100) NOT NULL,
    DataIscrizione TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT PK_Iscrizione PRIMARY KEY (IdCorso, UsernameUtente), -- chiave primaria composta
    CONSTRAINT FK_Iscrizione_Corso FOREIGN KEY (IdCorso) REFERENCES Corso(idCorso) ON DELETE CASCADE, -- foreign key verso Corso, su eliminazione di un corso elimina tutte le sue iscrizioni  
    CONSTRAINT FK_Iscrizione_Utente FOREIGN KEY (UsernameUtente) REFERENCES Utente(Username) ON DELETE CASCADE -- foreign key verso Utente, su eliminazione di un utente elimina tutte le sue iscrizioni
)