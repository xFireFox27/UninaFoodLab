CREATE TABLE SessioneInPresenza (
    IdSessione SERIAL PRIMARY KEY,
    Luogo VARCHAR(50) NOT NULL,
    Aula VARCHAR(50) NOT NULL,
    Data TIMESTAMP NOT NULL,
    Durata Integer NOT NULL,
    NumSessione Integer NOT NULL,
    IdCorso INTEGER NOT NULL,

    CONSTRAINT FK_SessioneInPresenza_Corso FOREIGN KEY (IdCorso) REFERENCES Corso(idCorso) ON DELETE CASCADE, -- foreign key verso Corso, su eliminazione di un corso elimina tutte le sue sessioni
    CONSTRAINT CK_Luogo CHECK (Luogo IN ('MonteSantangelo', 'ViaClaudio', 'PiazzaleTecchio', 'PortaDiMassa', 'ViaMarina')), -- controllo che il luogo sia un valore valido
    CONSTRAINT CK_Durata CHECK (Durata >= 60 AND Durata <= 180) -- controllo che la durata sia compresa tra 60 e 180 minuti
)

