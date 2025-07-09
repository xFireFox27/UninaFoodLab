INSERT INTO Corso(Titolo, Frequenza, NumLezioni, Anno, DataInizio, IdTopic, UsernameChef)
VALUES 
    ('Corso di cucina italiana', 'Ogni giorno', 100, 2025, '2025-09-08', (SELECT idTopic FROM Topic WHERE Nome = 'Cucina Italiana'), 'KenIlGuerriero'),
    ('Corso di pizza napoletana', 'Ogni due giorni', 90, 2025, '2025-10-12', (SELECT idTopic FROM Topic WHERE Nome = 'Pizza Napoletana'), 'ChefMaria'),
    ('Corso di cucina cinese', 'Settimanale', 20, 2025, '2025-08-02', (SELECT idTopic FROM Topic WHERE Nome = 'Cucina Cinese'), 'ChefAntonio'),
    ('Corso di cucina messicana', 'Ogni tre giorni', 20, 2025, '2025-11-24', (SELECT idTopic FROM Topic WHERE Nome = 'Cucina Messicana'), 'ChefFrancesca'),
    ('Corso di cucina giapponese', 'Settimanale', 30, 2025, '2025-09-10', (SELECT idTopic FROM Topic WHERE Nome = 'Cucina Giapponese'), 'ChefLuca'),
    ('Corso di cucina indiana', 'Settimanale', 25, 2025, '2025-09-15', (SELECT idTopic FROM Topic WHERE Nome = 'Cucina Indiana'), 'Il_Nerdone_11'),
    ('Corso di cucina francese', 'Ogni due giorni', 40, 2025, '2025-12-01', (SELECT idTopic FROM Topic WHERE Nome = 'Cucina Francese'), 'ChefElena'),
    ('Corso di cucina spagnola', 'Ogni tre giorni', 70, 2025, '2025-08-20', (SELECT idTopic FROM Topic WHERE Nome = 'Cucina Spagnola'), 'ChefMarco'),
    ('Corso di cucina americana', 'Ogni tre giorni', 15, 2025, '2025-10-05', (SELECT idTopic FROM Topic WHERE Nome = 'Cucina Americana'), 'ChefSara'),
    ('Corso di cucina mediterranea', 'Ogni giorno', 100, 2025, '2025-09-25', (SELECT idTopic FROM Topic WHERE Nome = 'Cucina Mediterranea'), 'FranchinoErCriminale'),
    ('Corso di pasticceria', 'Ogni giorno', 100, 2025, '2025-09-30', (SELECT idTopic FROM Topic WHERE Nome = 'Pasticceria'), 'ChefGiorgio'),
    ('Corso di panificazione', 'Ogni due giorni', 90, 2025, '2025-11-15', (SELECT idTopic FROM Topic WHERE Nome = 'Panificazione'), 'ChefValentina');