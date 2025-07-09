INSERT INTO SessioneInPresenza (Luogo, Aula, Data, Durata, NumSessione, IdCorso) VALUES
('MonteSantangelo', 'Aula1', '2025-10-01 10:00:00', 120, 1, SELECT idCorso FROM Corso WHERE NomeCorso = 'Corso di cucina italiana'),
('ViaClaudio', 'Aula2', '2025-10-02 11:00:00', 90, 1, SELECT idCorso FROM Corso WHERE NomeCorso = 'Corso di cucina messicana'),
('PiazzaleTecchio', 'Aula3', '2025-10-03 12:00:00', 150, 1, SELECT idCorso FROM Corso WHERE NomeCorso = 'Corso di cucina giapponese'),
('PortaDiMassa', 'Aula4', '2025-10-04 13:00:00', 180, 1, SELECT idCorso FROM Corso WHERE NomeCorso = 'Corso di cucina francese'),
('ViaMarina', 'Aula5', '2025-10-05 14:00:00', 75, 1, SELECT idCorso FROM Corso WHERE NomeCorso = 'Corso di cucina spagnola'),
('MonteSantangelo', 'Aula1', '2025-10-02 10:00:00', 120, 2, SELECT idCorso FROM Corso WHERE NomeCorso = 'Corso di cucina italiana');