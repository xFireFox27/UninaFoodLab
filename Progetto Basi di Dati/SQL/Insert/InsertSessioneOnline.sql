INSERT INTO SessioneOnline (Link, Data, Durata, NumSessione, IdCorso) VALUES
('https://example.com/session1', '2025-10-03 10:00:00', 120, 3, (SELECT idCorso FROM Corso WHERE Titolo = 'Corso di cucina italiana')),
('https://example.com/session2', '2025-10-04 11:00:00', 90, 4, (SELECT idCorso FROM Corso WHERE Titolo = 'Corso di cucina italiana')),
('https://example.com/session3', '2025-11-03 12:00:00', 150, 1, (SELECT idCorso FROM Corso WHERE Titolo = 'Corso di cucina americana')),
('https://example.com/session4', '2025-11-04 13:00:00', 180, 1, (SELECT idCorso FROM Corso WHERE Titolo = 'Corso di cucina cinese')),
('https://example.com/session5', '2025-09-05 14:00:00', 75, 1, (SELECT idCorso FROM Corso WHERE Titolo = 'Corso di cucina indiana'));