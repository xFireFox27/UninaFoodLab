-- Cucina Italiana

-- Spaghetti Aglio Olio e Peperoncino
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

-- Pasta e Patate
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

-- Carbonara
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

-- Pesto alla Genovese
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

-- Polpette al Sugo
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

-- Parmigiana di Melanzane
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

-- Arancini di Riso
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

-- Caponata
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

-- Cacciucco
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

-- Zuppa di Cozze
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

-- Pasta alla Norma
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

-- Pasta alla Puttanesca
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

-- Pasta al Forno
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

-- Ragù alla Bolognese
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

-- Ragù Napoletano
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

-- Sartù di Riso
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

-- Risotto ai Funghi Porcini
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

-- Risotto alla Milanese
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

-- Risotto al Nero di Seppia
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

-- Spaghetti alle Vongole
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

-- Spaghetti con le Sarde
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

-- Sarde a Beccafico
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

-- Cotoletta alla Milanese
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

-- Fritto Misto
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

-- Insalata di Polpo
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

-- Orata al Sale
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

-- Lasagna alla Bolognese
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

-- Pizza Napoletana

-- Pizza Margherita
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
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Margherita'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Passata di pomodoro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Margherita'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mozzarella di bufala'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Margherita'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Basilico'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Margherita'), 8);

-- Pizza Romana
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Romana'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Romana'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Romana'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Romana'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Romana'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Passata di pomodoro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Romana'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acciughe sott''olio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Romana'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Capperi sotto sale'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Romana'), 20),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olive nere'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Romana'), 30);

-- Pizza Ortolana
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Ortolana'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Ortolana'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Ortolana'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Ortolana'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Ortolana'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Fior di latte'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Ortolana'), 120),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchine'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Ortolana'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Melanzane'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Ortolana'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Ortolana'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Ortolana'), 80);

-- Pizza Diavola
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Diavola'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Diavola'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Diavola'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Diavola'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Diavola'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Passata di pomodoro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Diavola'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Fior di latte'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Diavola'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salame piccante'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Diavola'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoncino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Diavola'), 1);

-- Pizza Capricciosa
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Capricciosa'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Capricciosa'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Capricciosa'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Capricciosa'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Capricciosa'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Passata di pomodoro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Capricciosa'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Fior di latte'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Capricciosa'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Champignon'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Capricciosa'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Carciofini sott''olio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Capricciosa'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Prosciutto cotto'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Capricciosa'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olive nere'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Capricciosa'), 30);

-- Pizza Fritta
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Fritta'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Fritta'), 180),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Fritta'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Fritta'), 6),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Fritta'), 20),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Passata di pomodoro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Fritta'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Provola'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Fritta'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Ricotta fresca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Fritta'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Prosciutto cotto'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Fritta'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pepe nero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Fritta'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Fritta'), 200);

-- Montanara
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Montanara'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Montanara'), 120),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Montanara'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Montanara'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Montanara'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Passata di pomodoro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Montanara'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Basilico'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Montanara'), 6),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Parmigiano Reggiano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Montanara'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Montanara'), 150);

-- Pizza Filetto
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Filetto'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Filetto'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Filetto'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Filetto'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Filetto'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Fior di latte'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Filetto'), 120),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Filetto'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Basilico'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Filetto'), 8);

-- Pizza Salsiccia e Friarielli
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Salsiccia e Friarielli'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Salsiccia e Friarielli'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Salsiccia e Friarielli'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Salsiccia e Friarielli'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Salsiccia e Friarielli'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Fior di latte'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Salsiccia e Friarielli'), 120),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsiccia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Salsiccia e Friarielli'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Friarielli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Salsiccia e Friarielli'), 100);

-- Cucina Indiana

-- Pollo Tandoori
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Petto di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Tandoori'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Yogurt greco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Tandoori'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero fresco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Tandoori'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Tandoori'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Limoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Tandoori'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Paprika dolce'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Tandoori'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Curcuma'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Tandoori'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Curry in polvere'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Tandoori'), 8),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Tandoori'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Tandoori'), 20);

-- Curry
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Petto di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Curry'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte di cocco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Curry'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Curry'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Curry'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero fresco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Curry'), 20),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Curry'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Curry in polvere'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Curry'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Curcuma'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Curry'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Paprika dolce'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Curry'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoncino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Curry'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Curry'), 6),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Curry'), 30);

-- Pane Naan
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Naan'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Yogurt greco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Naan'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Naan'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Naan'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Naan'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Naan'), 6),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Naan'), 25),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Naan'), 2);

-- Samosa
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Samosa'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Samosa'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Samosa'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Samosa'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Patate'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Samosa'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Piselli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Samosa'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Samosa'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero fresco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Samosa'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Samosa'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Curry in polvere'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Samosa'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Curcuma'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Samosa'), 2);

-- Chicken Tikka
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Petto di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicken Tikka'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Yogurt greco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicken Tikka'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Limoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicken Tikka'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicken Tikka'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero fresco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicken Tikka'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Curry in polvere'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicken Tikka'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Paprika dolce'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicken Tikka'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Curcuma'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicken Tikka'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoncino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicken Tikka'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicken Tikka'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicken Tikka'), 25);

-- Panificazione

-- Pane Bianco
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Bianco'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Bianco'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Bianco'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Bianco'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Bianco'), 20);

-- Pane Integrale
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina integrale'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Integrale'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Integrale'), 350),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Integrale'), 12),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Integrale'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Integrale'), 25),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Miele'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Integrale'), 15);

-- Focaccia Ligure
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Focaccia Ligure'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Focaccia Ligure'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Focaccia Ligure'), 8),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Focaccia Ligure'), 12),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Focaccia Ligure'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale grosso'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Focaccia Ligure'), 5);

-- Focaccia Barese
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Focaccia Barese'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Focaccia Barese'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Focaccia Barese'), 8),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Focaccia Barese'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Focaccia Barese'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Focaccia Barese'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olive nere'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Focaccia Barese'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Origano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Focaccia Barese'), 5);

-- Pane di Segale
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina di segale'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane di Segale'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane di Segale'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane di Segale'), 350),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane di Segale'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane di Segale'), 12),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Miele'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane di Segale'), 20);

-- Pane Carasau
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Semola di grano duro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Carasau'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Carasau'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Carasau'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Carasau'), 8);

-- Pane Toscano
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Toscano'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Toscano'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Toscano'), 10);

-- Pane di Altamura
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Semola di grano duro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane di Altamura'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane di Altamura'), 320),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane di Altamura'), 12),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane di Altamura'), 10);

-- Baguette
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baguette'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baguette'), 325),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baguette'), 8),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baguette'), 10);

-- Ciabatta
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ciabatta'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ciabatta'), 350),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ciabatta'), 6),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ciabatta'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ciabatta'), 25);

-- Piadina Romagnola
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Piadina Romagnola'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Piadina Romagnola'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Piadina Romagnola'), 8),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Piadina Romagnola'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Bicarbonato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Piadina Romagnola'), 3);

-- Pizza in Teglia
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza in Teglia'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza in Teglia'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza in Teglia'), 8),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza in Teglia'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza in Teglia'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Passata di pomodoro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza in Teglia'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mozzarella di bufala'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza in Teglia'), 200);

-- Casatiello
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Casatiello'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Casatiello'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Casatiello'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Casatiello'), 8),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Casatiello'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Casatiello'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pecorino Romano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Casatiello'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salame piccante'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Casatiello'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Prosciutto cotto'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Casatiello'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Provola'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Casatiello'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pepe nero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Casatiello'), 3);

