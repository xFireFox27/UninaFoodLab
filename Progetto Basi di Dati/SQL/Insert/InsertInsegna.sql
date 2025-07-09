INSERT INTO Insegna(IdTopic, UsernameChef)
VALUES
    ((SELECT idTopic FROM Topic WHERE Nome = 'Cucina Italiana'), 'KenIlGuerriero'),
    ((SELECT idTopic FROM Topic WHERE Nome = 'Pizza Napoletana'), 'ChefMaria'),
    ((SELECT idTopic FROM Topic WHERE Nome = 'Cucina Cinese'), 'ChefAntonio'),
    ((SELECT idTopic FROM Topic WHERE Nome = 'Cucina Messicana'), 'ChefFrancesca'),
    ((SELECT idTopic FROM Topic WHERE Nome = 'Cucina Giapponese'), 'ChefLuca'),
    ((SELECT idTopic FROM Topic WHERE Nome = 'Cucina Indiana'), 'Il_Nerdone_11'),
    ((SELECT idTopic FROM Topic WHERE Nome = 'Cucina Francese'), 'ChefElena'),
    ((SELECT idTopic FROM Topic WHERE Nome = 'Cucina Spagnola'), 'ChefMarco'),
    ((SELECT idTopic FROM Topic WHERE Nome = 'Cucina Americana'), 'ChefSara'),
    ((SELECT idTopic FROM Topic WHERE Nome = 'Cucina Mediterranea'), 'FranchinoErCriminale'),
    ((SELECT idTopic FROM Topic WHERE Nome = 'Pasticceria'), 'ChefGiorgio'),
    ((SELECT idTopic FROM Topic WHERE Nome = 'Panificazione'), 'ChefValentina');