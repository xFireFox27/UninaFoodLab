-- RICETTA 1: Spaghetti Aglio Olio e Peperoncino
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Spaghetti'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti Aglio Olio e Peperoncino'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti Aglio Olio e Peperoncino'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti Aglio Olio e Peperoncino'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoncino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti Aglio Olio e Peperoncino'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Prezzemolo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti Aglio Olio e Peperoncino'), 10);

-- RICETTA 2: Pasta e Patate
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Rigatoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta e Patate'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Patate'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta e Patate'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sedano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta e Patate'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Carote'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta e Patate'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta e Patate'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Concentrato di pomodoro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta e Patate'), 20);

-- RICETTA 3: Carbonara
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Spaghetti'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Carbonara'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Guanciale'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Carbonara'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Carbonara'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pecorino Romano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Carbonara'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pepe nero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Carbonara'), 2);

-- RICETTA 4: Pesto alla Genovese
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Linguine'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pesto alla Genovese'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Basilico'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pesto alla Genovese'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pinoli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pesto alla Genovese'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Parmigiano Reggiano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pesto alla Genovese'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pesto alla Genovese'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pesto alla Genovese'), 60);

-- RICETTA 5: Polpette al Sugo
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Manzo macinato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Polpette al Sugo'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mollica di pane'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Polpette al Sugo'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Polpette al Sugo'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Passata di pomodoro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Polpette al Sugo'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Polpette al Sugo'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Basilico'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Polpette al Sugo'), 10);

-- RICETTA 6: Parmigiana di Melanzane
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Melanzane'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Parmigiana di Melanzane'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mozzarella di bufala'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Parmigiana di Melanzane'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Parmigiano Reggiano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Parmigiana di Melanzane'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Passata di pomodoro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Parmigiana di Melanzane'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Basilico'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Parmigiana di Melanzane'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Parmigiana di Melanzane'), 50);

-- RICETTA 7: Arancini di Riso
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Riso Carnaroli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Arancini di Riso'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zafferano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Arancini di Riso'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Ragù bolognese'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Arancini di Riso'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mozzarella di bufala'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Arancini di Riso'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pangrattato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Arancini di Riso'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Arancini di Riso'), 2);

-- RICETTA 8: Caponata
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Melanzane'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Caponata'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Caponata'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sedano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Caponata'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla rossa'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Caponata'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olive verdi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Caponata'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Capperi sotto sale'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Caponata'), 20);

-- RICETTA 9: Cacciucco
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Orata'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cacciucco'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Gamberi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cacciucco'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cozze'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cacciucco'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Calamari'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cacciucco'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cacciucco'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vino bianco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cacciucco'), 100);

-- RICETTA 10: Zuppa di Cozze
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cozze'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Zuppa di Cozze'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Polpo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Zuppa di Cozze'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Zuppa di Cozze'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Crostini'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Zuppa di Cozze'), 6),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Zuppa di Cozze'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoncino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Zuppa di Cozze'), 1);

-- RICETTA 11: Pasta alla Norma
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Rigatoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta alla Norma'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Melanzane'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta alla Norma'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Passata di pomodoro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta alla Norma'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Ricotta infornata'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta alla Norma'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Basilico'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta alla Norma'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta alla Norma'), 2);

-- RICETTA 12: Pasta alla Puttanesca
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Spaghetti'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta alla Puttanesca'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta alla Puttanesca'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Capperi sotto sale'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta alla Puttanesca'), 20),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olive nere'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta alla Puttanesca'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acciughe sott''olio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta alla Puttanesca'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta alla Puttanesca'), 2);

-- RICETTA 13: Pasta al Forno
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Rigatoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta al Forno'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Ragù bolognese'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta al Forno'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mozzarella di bufala'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta al Forno'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Parmigiano Reggiano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta al Forno'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Besciamella'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pasta al Forno'), 100);

-- RICETTA 14: Ragù alla Bolognese
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Manzo macinato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ragù alla Bolognese'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Passata di pomodoro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ragù alla Bolognese'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Carote'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ragù alla Bolognese'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sedano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ragù alla Bolognese'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ragù alla Bolognese'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vino rosso'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ragù alla Bolognese'), 100);

-- RICETTA 15: Ragù Napoletano
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Manzo macinato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ragù Napoletano'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodori San Marzano Pelati'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ragù Napoletano'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ragù Napoletano'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Carote'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ragù Napoletano'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vino rosso'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ragù Napoletano'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Basilico'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ragù Napoletano'), 15);

-- RICETTA 16: Sartù di Riso
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Riso Carnaroli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sartù di Riso'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Ragù bolognese'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sartù di Riso'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Piselli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sartù di Riso'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mozzarella di bufala'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sartù di Riso'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sartù di Riso'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pangrattato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sartù di Riso'), 30);

-- RICETTA 17: Risotto ai Funghi Porcini
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Riso Carnaroli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto ai Funghi Porcini'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Funghi porcini'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto ai Funghi Porcini'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Brodo vegetale'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto ai Funghi Porcini'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto ai Funghi Porcini'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vino bianco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto ai Funghi Porcini'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Parmigiano Reggiano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto ai Funghi Porcini'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto ai Funghi Porcini'), 30);

-- RICETTA 18: Risotto alla Milanese
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Riso Carnaroli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto alla Milanese'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zafferano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto alla Milanese'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Brodo di carne'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto alla Milanese'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto alla Milanese'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vino bianco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto alla Milanese'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto alla Milanese'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Parmigiano Reggiano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto alla Milanese'), 50);

-- RICETTA 19: Risotto al Nero di Seppia
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Riso Carnaroli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto al Nero di Seppia'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Seppie'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto al Nero di Seppia'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Inchiostro di seppia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto al Nero di Seppia'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Brodo di pesce'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto al Nero di Seppia'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto al Nero di Seppia'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vino bianco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto al Nero di Seppia'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Prezzemolo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Risotto al Nero di Seppia'), 10);

-- RICETTA 20: Spaghetti alle Vongole
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Spaghetti'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti alle Vongole'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vongole veraci'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti alle Vongole'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti alle Vongole'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Prezzemolo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti alle Vongole'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vino bianco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti alle Vongole'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti alle Vongole'), 40);

-- RICETTA 21: Spaghetti con le Sarde
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Spaghetti'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti con le Sarde'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sarde'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti con le Sarde'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Finocchietto selvatico'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti con le Sarde'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pinoli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti con le Sarde'), 20),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olive nere'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti con le Sarde'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pangrattato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti con le Sarde'), 20),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti con le Sarde'), 60);

-- RICETTA 22: Sarde a Beccafico
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sarde'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sarde a Beccafico'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pangrattato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sarde a Beccafico'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pinoli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sarde a Beccafico'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uvetta'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sarde a Beccafico'), 20),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Prezzemolo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sarde a Beccafico'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Limoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sarde a Beccafico'), 1);

-- RICETTA 23: Cotoletta alla Milanese
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lombo di vitello'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cotoletta alla Milanese'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pangrattato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cotoletta alla Milanese'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cotoletta alla Milanese'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cotoletta alla Milanese'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Limoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cotoletta alla Milanese'), 1);

-- RICETTA 24: Fritto Misto
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Gamberi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fritto Misto'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Calamari'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fritto Misto'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchine'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fritto Misto'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Melanzane'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fritto Misto'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fritto Misto'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fritto Misto'), 200);

-- RICETTA 25: Insalata di Polpo
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Polpo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Insalata di Polpo'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Patate'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Insalata di Polpo'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Prezzemolo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Insalata di Polpo'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Insalata di Polpo'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Limoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Insalata di Polpo'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Insalata di Polpo'), 5);

-- RICETTA 26: Orata al Sale
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Orata'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Orata al Sale'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale grosso'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Orata al Sale'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Albumi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Orata al Sale'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Rosmarino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Orata al Sale'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Limoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Orata al Sale'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Orata al Sale'), 20);

-- RICETTA 27: Lasagna alla Bolognese
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sfoglia per lasagne'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Lasagna alla Bolognese'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Ragù bolognese'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Lasagna alla Bolognese'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Besciamella'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Lasagna alla Bolognese'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Parmigiano Reggiano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Lasagna alla Bolognese'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mozzarella di bufala'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Lasagna alla Bolognese'), 150);

-- RICETTA 28: Pizza Margherita
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Margherita'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Margherita'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Margherita'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Margherita'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodori San Marzano Pelati'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Margherita'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mozzarella di bufala'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Margherita'), 125),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Basilico'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Margherita'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Margherita'), 15);

-- RICETTA 29: Pizza Romana
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Romana'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodori San Marzano Pelati'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Romana'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acciughe sott''olio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Romana'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Capperi sotto sale'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Romana'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olive nere'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Romana'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Origano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Romana'), 3);

-- RICETTA 30: Pizza Ortolana
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Ortolana'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Fior di latte'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Ortolana'), 125),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchine'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Ortolana'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Melanzane'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Ortolana'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Ortolana'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Ortolana'), 100);

-- RICETTA 31: Pizza Diavola
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Diavola'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodori San Marzano Pelati'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Diavola'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mozzarella di bufala'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Diavola'), 125),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salame piccante'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Diavola'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoncino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Diavola'), 2);

-- RICETTA 32: Pizza Capricciosa
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Capricciosa'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodori San Marzano Pelati'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Capricciosa'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mozzarella di bufala'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Capricciosa'), 125),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Champignon'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Capricciosa'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Carciofini sott''olio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Capricciosa'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Prosciutto cotto'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Capricciosa'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olive nere'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Capricciosa'), 20);

-- RICETTA 33: Pizza Fritta
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Fritta'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodori San Marzano Pelati'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Fritta'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Provola'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Fritta'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Ricotta fresca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Fritta'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salame piccante'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Fritta'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pepe nero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Fritta'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Fritta'), 300);

-- RICETTA 34: Montanara
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Montanara'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodori San Marzano Pelati'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Montanara'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Basilico'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Montanara'), 8),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Parmigiano Reggiano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Montanara'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Montanara'), 200);

-- RICETTA 35: Pizza Filetto
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Filetto'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Fior di latte'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Filetto'), 125),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Filetto'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Basilico'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Filetto'), 10);

-- RICETTA 36: Pizza Salsiccia e Friarielli
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Salsiccia e Friarielli'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Fior di latte'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Salsiccia e Friarielli'), 125),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsiccia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Salsiccia e Friarielli'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Friarielli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Salsiccia e Friarielli'), 80);

-- RICETTA 37: Tapas
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olive nere'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tapas'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olive verdi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tapas'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Prosciutto crudo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tapas'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Formaggio cheddar'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tapas'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pane bianco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tapas'), 100);

-- RICETTA 38: Tortilla di Patate
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla di Patate'), 6),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Patate'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla di Patate'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla di Patate'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla di Patate'), 5);

-- RICETTA 39: Tortilla di Cipolle
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla di Cipolle'), 6),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla di Cipolle'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla di Cipolle'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla di Cipolle'), 5);

-- RICETTA 40: Gazpacho
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gazpacho'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cetrioli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gazpacho'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gazpacho'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gazpacho'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gazpacho'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aceto di vino bianco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gazpacho'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gazpacho'), 40);

-- RICETTA 41: Paella
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Riso Carnaroli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Paella'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Petto di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Paella'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Coniglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Paella'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Gamberi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Paella'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cozze'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Paella'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zafferano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Paella'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Piselli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Paella'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Brodo di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Paella'), 500);

-- RICETTA 42: Churros
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Patate'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Churros'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Churros'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Churros'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Churros'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Churros'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cioccolato fondente'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Churros'), 100);

-- RICETTA 43: Polpo a la Gallega
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Polpo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Polpo a la Gallega'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Patate'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Polpo a la Gallega'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Paprika dolce'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Polpo a la Gallega'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Polpo a la Gallega'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale grosso'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Polpo a la Gallega'), 10);

-- RICETTA 44: Crema Catalana
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crema Catalana'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tuorli d''uovo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crema Catalana'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crema Catalana'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cannella'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crema Catalana'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Limoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crema Catalana'), 1);

-- RICETTA 45: Empanada Fritta
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada Fritta'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Manzo macinato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada Fritta'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada Fritta'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada Fritta'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olive verdi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada Fritta'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada Fritta'), 200);

-- RICETTA 46: Empanada al Forno
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada al Forno'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Manzo macinato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada al Forno'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada al Forno'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada al Forno'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olive verdi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada al Forno'), 30);

-- RICETTA 47: Chili di Carne
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Manzo macinato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chili di Carne'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Fagioli neri'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chili di Carne'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chili di Carne'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chili di Carne'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoncino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chili di Carne'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Paprika piccante'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chili di Carne'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chili di Carne'), 3);

-- RICETTA 48: Nachos con Formaggio
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tortilla chips'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Nachos con Formaggio'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Formaggio cheddar'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Nachos con Formaggio'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoncino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Nachos con Formaggio'), 1);

-- RICETTA 49: Guacamole
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Avocado'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Guacamole'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lime'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Guacamole'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla rossa'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Guacamole'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Guacamole'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Guacamole'), 1);

-- RICETTA 50: Tacos
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tortilla di mais'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tacos'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Manzo macinato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tacos'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lattuga'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tacos'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tacos'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Formaggio cheddar'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tacos'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla rossa'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tacos'), 40);

-- RICETTA 51: Quesadilla
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tortilla di mais'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quesadilla'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Formaggio cheddar'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quesadilla'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Petto di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quesadilla'), 150);

-- RICETTA 52: Burritos
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tortilla di grano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Burritos'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Manzo macinato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Burritos'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Fagioli neri'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Burritos'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Riso basmati'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Burritos'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Formaggio cheddar'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Burritos'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lattuga'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Burritos'), 60);

-- RICETTA 53: Fajitas
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Petto di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fajitas'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fajitas'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fajitas'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tortilla di grano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fajitas'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lime'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fajitas'), 2);

-- RICETTA 54: Salsa di Fagioli
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Fagioli neri'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Salsa di Fagioli'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Salsa di Fagioli'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Salsa di Fagioli'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Salsa di Fagioli'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoncino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Salsa di Fagioli'), 2);

-- RICETTA 55: Enchiladas
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tortilla di mais'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Enchiladas'), 6),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Petto di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Enchiladas'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Formaggio cheddar'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Enchiladas'), 120),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa di pomodoro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Enchiladas'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoncino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Enchiladas'), 2);

-- RICETTA 56: Tortilla Messicana
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina di mais'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla Messicana'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla Messicana'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla Messicana'), 3);

-- RICETTA 57: Ramen
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Noodles'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ramen'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Brodo di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ramen'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ramen'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipollotti'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ramen'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Alga nori'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ramen'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pancetta di maiale'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ramen'), 80);

-- RICETTA 58: Sushi
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Riso per sushi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sushi'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salmone'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sushi'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Alga nori'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sushi'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aceto di riso'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sushi'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sushi'), 15);

-- RICETTA 59: Sashimi
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salmone'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sashimi'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tonno'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sashimi'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Wasabi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sashimi'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sashimi'), 10);

-- RICETTA 60: Teriyaki di Pollo
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Petto di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Teriyaki di Pollo'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa di soia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Teriyaki di Pollo'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mirin'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Teriyaki di Pollo'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Teriyaki di Pollo'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Teriyaki di Pollo'), 10);

-- RICETTA 61: Miso Soup
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Miso'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Miso Soup'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Brodo di pesce'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Miso Soup'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tofu'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Miso Soup'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Alga wakame'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Miso Soup'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipollotti'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Miso Soup'), 2);

-- RICETTA 62: Tempura
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Gamberi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tempura'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchine'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tempura'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Melanzane'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tempura'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tempura'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua ghiacciata'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tempura'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tempura'), 500);

-- RICETTA 63: Onigiri
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Riso per sushi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Onigiri'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Alga nori'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Onigiri'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salmone'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Onigiri'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Onigiri'), 3);

-- RICETTA 64: Dumplings
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Dumplings'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Maiale macinato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Dumplings'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cavolo cinese'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Dumplings'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipollotti'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Dumplings'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Dumplings'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa di soia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Dumplings'), 30);

-- RICETTA 65: Gyoza
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gyoza'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Maiale macinato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gyoza'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cavolo cinese'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gyoza'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gyoza'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gyoza'), 8),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa di soia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gyoza'), 20);

-- RICETTA 66: Riso Cantonese
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Riso basmati'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Riso Cantonese'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Riso Cantonese'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Piselli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Riso Cantonese'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Prosciutto cotto'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Riso Cantonese'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipollotti'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Riso Cantonese'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa di soia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Riso Cantonese'), 40);

-- RICETTA 67: Pollo alle Mandorle
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Petto di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo alle Mandorle'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mandorle pelate'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo alle Mandorle'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo alle Mandorle'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo alle Mandorle'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa di soia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo alle Mandorle'), 40);

-- RICETTA 68: Spaghetti di Soia
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Spaghetti di soia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti di Soia'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Petto di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti di Soia'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Carote'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti di Soia'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cavolo cinese'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti di Soia'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa di soia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Spaghetti di Soia'), 50);

-- RICETTA 69: Mapo Tofu
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tofu'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Mapo Tofu'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Maiale macinato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Mapo Tofu'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pasta di fagioli piccante'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Mapo Tofu'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Brodo di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Mapo Tofu'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipollotti'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Mapo Tofu'), 3);

-- RICETTA 70: Peking Duck
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Anatra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Peking Duck'), 800),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa hoisin'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Peking Duck'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cetrioli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Peking Duck'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipollotti'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Peking Duck'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pancake cinesi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Peking Duck'), 8);

-- RICETTA 71: Hamburger
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pane per hamburger'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Hamburger'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Manzo macinato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Hamburger'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lattuga'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Hamburger'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Hamburger'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Formaggio cheddar'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Hamburger'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Hamburger'), 40);

-- RICETTA 72: Hotdog
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pane per hotdog'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Hotdog'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Wurstel'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Hotdog'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Senape'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Hotdog'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Ketchup'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Hotdog'), 20);

-- RICETTA 73: Caesar Salad
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lattuga'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Caesar Salad'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Petto di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Caesar Salad'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Parmigiano Reggiano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Caesar Salad'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Crostini di pane'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Caesar Salad'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acciughe'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Caesar Salad'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Maionese'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Caesar Salad'), 80);

-- RICETTA 74: BBQ Ribs
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Costolette di maiale'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'BBQ Ribs'), 600),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa barbecue'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'BBQ Ribs'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Paprika dolce'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'BBQ Ribs'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero di canna'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'BBQ Ribs'), 30);

-- RICETTA 75: Corn Bread
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina di mais'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Corn Bread'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Corn Bread'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Corn Bread'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Corn Bread'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Corn Bread'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Corn Bread'), 60);

-- RICETTA 76: Fish and Chips
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Merluzzo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fish and Chips'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Patate'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fish and Chips'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fish and Chips'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fish and Chips'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fish and Chips'), 500);

-- RICETTA 77: Mac and Cheese
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Maccheroni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Mac and Cheese'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Formaggio cheddar'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Mac and Cheese'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Mac and Cheese'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Mac and Cheese'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Mac and Cheese'), 30);

-- RICETTA 78: Brownies
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cioccolato fondente'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Brownies'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Brownies'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Brownies'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Brownies'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Brownies'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Noci'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Brownies'), 80);

-- RICETTA 79: Donuts
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Donuts'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Donuts'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Donuts'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Donuts'), 120),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Donuts'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Donuts'), 500);

-- RICETTA 80: Chicken Wings
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Ali di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicken Wings'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa piccante'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicken Wings'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicken Wings'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicken Wings'), 3);

-- RICETTA 81: Curry di Pollo
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Petto di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Curry di Pollo'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte di cocco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Curry di Pollo'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Curry in polvere'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Curry di Pollo'), 20),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Curry di Pollo'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Curry di Pollo'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Curry di Pollo'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Curry di Pollo'), 200);

-- RICETTA 82: Naan
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Naan'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Yogurt'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Naan'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Naan'), 7),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Naan'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Naan'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Naan'), 40);

-- RICETTA 83: Samosa
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Samosa'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Patate'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Samosa'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Piselli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Samosa'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Samosa'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Curcuma'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Samosa'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cumino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Samosa'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Samosa'), 200);

-- RICETTA 84: Pollo Tandoori
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Petto di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Tandoori'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Yogurt'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Tandoori'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Paprika piccante'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Tandoori'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Curcuma'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Tandoori'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Tandoori'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Tandoori'), 15);

-- RICETTA 85: Biryani
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Riso basmati'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Biryani'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Agnello'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Biryani'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Biryani'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Yogurt'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Biryani'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zafferano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Biryani'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cardamomo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Biryani'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cannella'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Biryani'), 5);

-- RICETTA 86: Dal
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lenticchie rosse'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Dal'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Dal'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Dal'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Dal'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Curcuma'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Dal'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cumino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Dal'), 5);

-- RICETTA 87: Mango Lassi
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mango'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Mango Lassi'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Yogurt'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Mango Lassi'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Mango Lassi'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cardamomo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Mango Lassi'), 2);

-- RICETTA 88: Chapati
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina integrale'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chapati'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chapati'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chapati'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chapati'), 20);

-- RICETTA 89: Palak Paneer
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Spinaci'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Palak Paneer'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Paneer'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Palak Paneer'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Palak Paneer'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Palak Paneer'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Palak Paneer'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Panna da cucina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Palak Paneer'), 100);

-- RICETTA 90: Gulab Jamun
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte in polvere'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gulab Jamun'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gulab Jamun'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gulab Jamun'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gulab Jamun'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cardamomo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gulab Jamun'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua di rose'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gulab Jamun'), 10);

-- RICETTA 91: Coq au Vin
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Petto di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Coq au Vin'), 600),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vino rosso'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Coq au Vin'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pancetta di maiale'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Coq au Vin'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Champignon'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Coq au Vin'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Coq au Vin'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Coq au Vin'), 3);

-- RICETTA 92: Ratatouille
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Melanzane'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ratatouille'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchine'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ratatouille'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ratatouille'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ratatouille'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ratatouille'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ratatouille'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Erbe di Provenza'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ratatouille'), 10);

-- RICETTA 93: French Onion Soup
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'French Onion Soup'), 600),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Brodo di manzo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'French Onion Soup'), 1000),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Gruyère'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'French Onion Soup'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pane bianco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'French Onion Soup'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'French Onion Soup'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vino bianco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'French Onion Soup'), 150);

-- RICETTA 94: Bouillabaisse
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Branzino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Bouillabaisse'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Orata'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Bouillabaisse'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Gamberi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Bouillabaisse'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cozze'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Bouillabaisse'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Bouillabaisse'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zafferano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Bouillabaisse'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Finocchio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Bouillabaisse'), 100);

-- RICETTA 95: Crêpes
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crêpes'), 125),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crêpes'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crêpes'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crêpes'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crêpes'), 20);

-- RICETTA 96: Quiche Lorraine
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pasta brisée'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quiche Lorraine'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pancetta di maiale'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quiche Lorraine'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quiche Lorraine'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Panna da cucina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quiche Lorraine'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Gruyère'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quiche Lorraine'), 100);

-- RICETTA 97: Croissant
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Croissant'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Croissant'), 125),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Croissant'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Croissant'), 7),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Croissant'), 25),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Croissant'), 5);

-- RICETTA 98: Baguette
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baguette'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baguette'), 350),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baguette'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baguette'), 10);

-- RICETTA 99: Pain au Chocolat
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pain au Chocolat'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pain au Chocolat'), 125),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cioccolato fondente'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pain au Chocolat'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pain au Chocolat'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pain au Chocolat'), 7),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pain au Chocolat'), 25);

-- RICETTA 100: Tarte Tatin
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pasta sfoglia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tarte Tatin'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mele'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tarte Tatin'), 800),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tarte Tatin'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tarte Tatin'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cannella'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tarte Tatin'), 5);



