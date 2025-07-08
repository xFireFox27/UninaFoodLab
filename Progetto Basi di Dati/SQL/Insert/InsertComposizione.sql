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

