CREATE TABLE SessioneInPresenza (
    IdSessione VARCHAR(1000) PRIMARY KEY,
    Luogo VARCHAR(50) NOT NULL,
    Aula VARCHAR(50) NOT NULL,
    Data TIMESTAMP NOT NULL,
    Durata Integer NOT NULL,
    NumSessione Integer NOT NULL,
    IdCorso VARCHAR(1000) NOT NULL,

    CONSTRAINT FK_SessioneInPresenza_Corso FOREIGN KEY (IdCorso) REFERENCES Corso(idCorso)
    CONSTRAINT CK_Luogo CHECK (Luogo IN ('MonteSantangelo', 'ViaClaudio', 'PiazzaleTecchio', 'PortaDiMassa', 'ViaMarina'))
)