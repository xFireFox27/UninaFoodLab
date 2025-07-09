INSERT INTO Prepara (IdSessionePresenza, IdRicetta) VALUES
((SELECT IdSessione FROM SessioneInPresenza WHERE Data = '2025-10-01 10:00:00' AND IdCorso = (SELECT idCorso FROM Corso WHERE Titolo = 'Corso di cucina italiana')),
    (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Carbonara')),
((SELECT IdSessione FROM SessioneInPresenza WHERE Data = '2025-10-02 10:00:00' AND IdCorso = (SELECT idCorso FROM Corso WHERE Titolo = 'Corso di cucina italiana')),
    (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ragù alla Bolognese')),
((SELECT IdSessione FROM SessioneInPresenza WHERE Data = '2025-10-03 12:00:00' AND IdCorso = (SELECT idCorso FROM Corso WHERE Titolo = 'Corso di cucina giapponese')),
    (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Maki')),
((SELECT IdSessione FROM SessioneInPresenza WHERE Data = '2025-10-04 13:00:00' AND IdCorso = (SELECT idCorso FROM Corso WHERE Titolo = 'Corso di cucina francese')),
    (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ratatouille')),
((SELECT IdSessione FROM SessioneInPresenza WHERE Data = '2025-10-05 14:00:00' AND IdCorso = (SELECT idCorso FROM Corso WHERE Titolo = 'Corso di cucina spagnola')),
    (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Paella')),
((SELECT IdSessione FROM SessioneInPresenza WHERE Data = '2025-10-02 11:00:00' AND IdCorso = (SELECT idCorso FROM Corso WHERE Titolo = 'Corso di cucina messicana')),
    (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tacos'));