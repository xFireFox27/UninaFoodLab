-- Cucina Italiana

-- Spaghetti Aglio Olio e Peperoncino
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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

-- Cucina Spagnola

-- Tapas
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Prosciutto crudo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tapas'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Formaggio cheddar'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tapas'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olive verdi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tapas'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olive nere'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tapas'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pane bianco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tapas'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tapas'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tapas'), 20);

-- Tortilla di Patate
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Patate'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla di Patate'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla di Patate'), 6),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla di Patate'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla di Patate'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla di Patate'), 5);

-- Tortilla di Cipolle
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla di Cipolle'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla di Cipolle'), 6),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla di Cipolle'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla di Cipolle'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pepe nero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tortilla di Cipolle'), 2);

-- Gazpacho
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gazpacho'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cetrioli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gazpacho'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gazpacho'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla rossa'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gazpacho'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gazpacho'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gazpacho'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aceto di vino bianco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gazpacho'), 20),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gazpacho'), 5);

-- Paella
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Riso Carnaroli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Paella'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zafferano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Paella'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Petto di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Paella'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Coniglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Paella'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Gamberi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Paella'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cozze'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Paella'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Piselli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Paella'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Paella'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Brodo di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Paella'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Paella'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Paella'), 50);

-- Churros
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Churros'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Churros'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Churros'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Churros'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cannella'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Churros'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Churros'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cioccolato fondente'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Churros'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Churros'), 200);

-- Polpo a la Gallega
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Polpo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Polpo a la Gallega'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Patate'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Polpo a la Gallega'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Paprika dolce'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Polpo a la Gallega'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Polpo a la Gallega'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale grosso'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Polpo a la Gallega'), 10);

-- Crema Catalana
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crema Catalana'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tuorli d''uovo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crema Catalana'), 6),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crema Catalana'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cannella'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crema Catalana'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Limoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crema Catalana'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero di canna'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crema Catalana'), 50);

-- Empanada Fritta
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada Fritta'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada Fritta'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada Fritta'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada Fritta'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Manzo macinato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada Fritta'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada Fritta'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada Fritta'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olive verdi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada Fritta'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada Fritta'), 200);

-- Empanada al Forno
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada al Forno'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada al Forno'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada al Forno'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada al Forno'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tonno'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada al Forno'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada al Forno'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada al Forno'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada al Forno'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Empanada al Forno'), 100);


-- Cucina Giapponese

-- Nigiri
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Riso basmati'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Nigiri'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salmone'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Nigiri'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tonno'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Nigiri'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Wasabi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Nigiri'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa di soia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Nigiri'), 20),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero fresco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Nigiri'), 10);

-- Sashimi
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salmone'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sashimi'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tonno'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sashimi'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Orata'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sashimi'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Wasabi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sashimi'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa di soia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sashimi'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero fresco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sashimi'), 15);

-- Maki
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Riso basmati'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Maki'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Alga nori'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Maki'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salmone'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Maki'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cetrioli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Maki'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Avocado'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Maki'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Wasabi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Maki'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa di soia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Maki'), 20);

-- Uramaki
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Riso basmati'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Uramaki'), 120),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Alga nori'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Uramaki'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tonno'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Uramaki'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cetrioli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Uramaki'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Avocado'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Uramaki'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Maionese'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Uramaki'), 20),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa di soia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Uramaki'), 25);

-- Tempura
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Gamberi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tempura'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchine'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tempura'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Melanzane'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tempura'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tempura mix'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tempura'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tempura'), 120),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tempura'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa tsuyu'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tempura'), 50);

-- Gyoza
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gyoza'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gyoza'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Manzo macinato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gyoza'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipollotto'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gyoza'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero fresco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gyoza'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa di soia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gyoza'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gyoza'), 20);

-- Onigiri
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Riso basmati'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Onigiri'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Alga nori'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Onigiri'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tonno'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Onigiri'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salmone'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Onigiri'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cetrioli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Onigiri'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Onigiri'), 5);

-- Ramen di Carne
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Noodles'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ramen di Carne'), 120),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Brodo di carne'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ramen di Carne'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lonza di maiale'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ramen di Carne'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ramen di Carne'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipollotto'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ramen di Carne'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero fresco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ramen di Carne'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Miso'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ramen di Carne'), 20);

-- Ramen di Pesce
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Noodles'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ramen di Pesce'), 120),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Brodo di pesce'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ramen di Pesce'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salmone'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ramen di Pesce'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Gamberi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ramen di Pesce'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ramen di Pesce'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Alga wakame'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ramen di Pesce'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipollotto'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ramen di Pesce'), 30);

-- Soba
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Soba'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Soba'), 120),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa tsuyu'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Soba'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipollotto'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Soba'), 20),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero fresco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Soba'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Alga nori'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Soba'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Wasabi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Soba'), 5);

-- Tonkatsu
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lonza di maiale'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tonkatsu'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pangrattato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tonkatsu'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tonkatsu'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tonkatsu'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tonkatsu'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa tonkatsu'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tonkatsu'), 40);

-- Takoyaki
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Takoyaki'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Takoyaki'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Polpo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Takoyaki'), 120),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Takoyaki'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipollotto'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Takoyaki'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero fresco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Takoyaki'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa di soia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Takoyaki'), 30);

-- Taiyaki
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Taiyaki'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Taiyaki'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Taiyaki'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Taiyaki'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Marmellata'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Taiyaki'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Taiyaki'), 20);

-- Mochi
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Riso basmati'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Mochi'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Mochi'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Mochi'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Marmellata'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Mochi'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Mochi'), 30);


-- Cucina Americana

-- Beef Jerky
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Manzo macinato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Beef Jerky'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa worcestershire'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Beef Jerky'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa di soia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Beef Jerky'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Paprika piccante'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Beef Jerky'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pepe nero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Beef Jerky'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Beef Jerky'), 8);

-- Hamburger
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Manzo macinato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Hamburger'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pane per hamburger'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Hamburger'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Formaggio cheddar'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Hamburger'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lattuga'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Hamburger'), 20),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Hamburger'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla rossa'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Hamburger'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Ketchup'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Hamburger'), 20),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Maionese'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Hamburger'), 15);

-- NewYork Style Pizza
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'NewYork Style Pizza'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'NewYork Style Pizza'), 240),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'NewYork Style Pizza'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'NewYork Style Pizza'), 8),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'NewYork Style Pizza'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Passata di pomodoro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'NewYork Style Pizza'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mozzarella di bufala'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'NewYork Style Pizza'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Origano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'NewYork Style Pizza'), 5);

-- Chicago Style Pizza
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicago Style Pizza'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicago Style Pizza'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicago Style Pizza'), 7),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicago Style Pizza'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicago Style Pizza'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mozzarella di bufala'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicago Style Pizza'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Passata di pomodoro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicago Style Pizza'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsiccia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicago Style Pizza'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chicago Style Pizza'), 100);

-- Alette di Pollo
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Alette di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Alette di Pollo'), 800),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa barbecue'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Alette di Pollo'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa piccante'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Alette di Pollo'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Miele'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Alette di Pollo'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Alette di Pollo'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Paprika dolce'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Alette di Pollo'), 8),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Alette di Pollo'), 10);

-- Pollo Fritto
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pollo intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Fritto'), 1000),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Fritto'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pangrattato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Fritto'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Fritto'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Fritto'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Paprika dolce'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Fritto'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Fritto'), 12),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pepe nero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Fritto'), 8),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Fritto'), 500);

-- Pulled Pork
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lonza di maiale'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pulled Pork'), 1000),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa barbecue'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pulled Pork'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Paprika dolce'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pulled Pork'), 20),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Curry in polvere'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pulled Pork'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero di canna'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pulled Pork'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pulled Pork'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pepe nero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pulled Pork'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pulled Pork'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pulled Pork'), 150);

-- Fettuccine Alfredo
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Linguine'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fettuccine Alfredo'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fettuccine Alfredo'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Panna fresca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fettuccine Alfredo'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Parmigiano Reggiano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fettuccine Alfredo'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fettuccine Alfredo'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pepe nero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fettuccine Alfredo'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Fettuccine Alfredo'), 5);

-- Brownies
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cacao amaro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Brownies'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Noci'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Brownies'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vaniglia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Brownies'), 5);

-- Cheesecake
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Formaggio Spalmabile'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cheesecake'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Biscotti'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cheesecake'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cheesecake'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cheesecake'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cheesecake'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Panna fresca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cheesecake'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Estratto di vaniglia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cheesecake'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Limoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cheesecake'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Fragole'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cheesecake'), 150);

-- Cucina Francese

-- Soupe a l'oignon
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Soupe a l''oignon'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Brodo di carne'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Soupe a l''oignon'), 800),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Crostini'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Soupe a l''oignon'), 6),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Formaggio cheddar'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Soupe a l''oignon'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Soupe a l''oignon'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vino bianco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Soupe a l''oignon'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Soupe a l''oignon'), 8),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pepe nero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Soupe a l''oignon'), 3);

-- Escargot
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Escargot'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Escargot'), 6),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Prezzemolo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Escargot'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Scalogno'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Escargot'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vino bianco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Escargot'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Escargot'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pepe nero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Escargot'), 2);

-- Coq au Vin
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pollo intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Coq au Vin'), 1200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vino rosso'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Coq au Vin'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Champignon'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Coq au Vin'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Coq au Vin'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pancetta'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Coq au Vin'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Carote'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Coq au Vin'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Coq au Vin'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Timo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Coq au Vin'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Coq au Vin'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Coq au Vin'), 20);

-- Ratatouille
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Timo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ratatouille'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Basilico'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ratatouille'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Ratatouille'), 60);

-- Boeuf Bourguignon
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Manzo macinato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Boeuf Bourguignon'), 800),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vino rosso'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Boeuf Bourguignon'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Champignon'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Boeuf Bourguignon'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Boeuf Bourguignon'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Carote'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Boeuf Bourguignon'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pancetta'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Boeuf Bourguignon'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Brodo di carne'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Boeuf Bourguignon'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Boeuf Bourguignon'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Timo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Boeuf Bourguignon'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Boeuf Bourguignon'), 40);

-- Crepes
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crepes'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crepes'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crepes'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crepes'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crepes'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crepes'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Marmellata'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crepes'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Fragole'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crepes'), 150);

-- Croissant
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Croissant'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Croissant'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Croissant'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Croissant'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Croissant'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Croissant'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Croissant'), 1);

-- Macarons
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mandorle'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Macarons'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero a velo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Macarons'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Albumi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Macarons'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Macarons'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Macarons'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cioccolato fondente'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Macarons'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Panna fresca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Macarons'), 100);

-- Omelette
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Omelette'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Omelette'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Omelette'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Formaggio cheddar'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Omelette'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Champignon'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Omelette'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Prezzemolo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Omelette'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Omelette'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pepe nero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Omelette'), 2);

-- Quiche Lorraine
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quiche Lorraine'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quiche Lorraine'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quiche Lorraine'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Panna fresca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quiche Lorraine'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pancetta'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quiche Lorraine'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Formaggio cheddar'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quiche Lorraine'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quiche Lorraine'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quiche Lorraine'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pepe nero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quiche Lorraine'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Noce moscata'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quiche Lorraine'), 2);
     
-- Pizza Napoletana

-- Pizza Margherita
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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

-- Pizza Zeb89
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Zeb89'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Zeb89'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Zeb89'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Zeb89'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Zeb89'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tartufo nero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Zeb89'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Prosciutto cotto'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Zeb89'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Fior di latte'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Zeb89'), 120),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Funghi porcini'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pizza Zeb89'), 80);

-- Cucina Indiana

-- Pollo Tandoori
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Toscano'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Toscano'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pane Toscano'), 10);

-- Pane di Altamura
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
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

-- Cucina Messicana

-- Chili di Carne
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Manzo macinato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chili di Carne'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Fagioli cannellini'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chili di Carne'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chili di Carne'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chili di Carne'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chili di Carne'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chili di Carne'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Paprika piccante'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chili di Carne'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoncino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chili di Carne'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio extravergine d''oliva'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Chili di Carne'), 30);

-- Nachos con Formaggio
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tortilla chips'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Nachos con Formaggio'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Formaggio cheddar'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Nachos con Formaggio'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoncino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Nachos con Formaggio'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Nachos con Formaggio'), 50);

-- Guacamole
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Avocado'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Guacamole'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lime'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Guacamole'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Guacamole'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Guacamole'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Guacamole'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoncino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Guacamole'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Guacamole'), 5);

-- Tacos
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tortilla di mais'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tacos'), 6),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Manzo macinato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tacos'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Fagioli neri'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tacos'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Formaggio cheddar'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tacos'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lattuga'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tacos'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tacos'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tacos'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Paprika piccante'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tacos'), 8);

-- Burrito
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tortilla di grano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Burrito'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Manzo macinato'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Burrito'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Fagioli neri'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Burrito'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Riso basmati'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Burrito'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Formaggio cheddar'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Burrito'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lattuga'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Burrito'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Burrito'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Burrito'), 50);

-- Quesadilla
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tortilla di mais'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quesadilla'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Formaggio cheddar'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quesadilla'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quesadilla'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quesadilla'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pomodorini ciliegino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quesadilla'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Quesadilla'), 20);

-- Cucina Cinese

-- Baozi
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baozi'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baozi'), 7),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lonza di maiale'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baozi'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipolla bianca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baozi'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero fresco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baozi'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa di soia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baozi'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baozi'), 20);

-- Dim Sum
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Dim Sum'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Gamberi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Dim Sum'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lonza di maiale'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Dim Sum'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Funghi shiitake'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Dim Sum'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipollotto'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Dim Sum'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero fresco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Dim Sum'), 8),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa di soia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Dim Sum'), 25);

-- Riso Fritto
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Riso basmati'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Riso Fritto'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Riso Fritto'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Carote'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Riso Fritto'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Piselli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Riso Fritto'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipollotto'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Riso Fritto'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Riso Fritto'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa di soia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Riso Fritto'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Riso Fritto'), 30);

-- Involtini Primavera
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sfoglia per lasagne'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Involtini Primavera'), 8),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Carote'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Involtini Primavera'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cavolo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Involtini Primavera'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Funghi shiitake'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Involtini Primavera'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipollotto'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Involtini Primavera'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero fresco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Involtini Primavera'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa di soia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Involtini Primavera'), 20),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Involtini Primavera'), 200);

-- Anatra alla Pechinese
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Anatra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Anatra alla Pechinese'), 800),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Miele'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Anatra alla Pechinese'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa di soia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Anatra alla Pechinese'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero fresco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Anatra alla Pechinese'), 15),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipollotto'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Anatra alla Pechinese'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cetrioli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Anatra alla Pechinese'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tortilla di grano'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Anatra alla Pechinese'), 6);

-- Pollo Kung Pao
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Petto di pollo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Kung Pao'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Arachidi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Kung Pao'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Kung Pao'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cipollotto'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Kung Pao'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Aglio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Kung Pao'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zenzero fresco'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Kung Pao'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Salsa di soia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Kung Pao'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Peperoncino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Kung Pao'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pollo Kung Pao'), 30);

-- Pasticceria

-- Torta di Mele
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mele'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta di Mele'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta di Mele'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta di Mele'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta di Mele'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta di Mele'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cannella'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta di Mele'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito per dolci'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta di Mele'), 10);

-- Torta Caprese
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cacao amaro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta Caprese'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mandorle'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta Caprese'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta Caprese'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta Caprese'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta Caprese'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero a velo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta Caprese'), 30);

-- Torta della Nonna
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta della Nonna'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta della Nonna'), 120),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta della Nonna'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta della Nonna'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Crema pasticcera'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta della Nonna'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pinoli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta della Nonna'), 40);

-- Torta di Ciliegie
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Ciliegie'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta di Ciliegie'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta di Ciliegie'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta di Ciliegie'), 120),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta di Ciliegie'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta di Ciliegie'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito per dolci'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta di Ciliegie'), 10);

-- Torta Ricotta e Pere
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Ricotta fresca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta Ricotta e Pere'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Pere'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta Ricotta e Pere'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Nocciole'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta Ricotta e Pere'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta Ricotta e Pere'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta Ricotta e Pere'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta Ricotta e Pere'), 2);

-- Biscotto all'Amarena
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Biscotto all''Amarena'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Biscotto all''Amarena'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Biscotto all''Amarena'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Biscotto all''Amarena'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Amarene'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Biscotto all''Amarena'), 50);

-- Cantucci
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cantucci'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mandorle'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cantucci'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cantucci'), 120),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cantucci'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito per dolci'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Cantucci'), 8);

-- Torta Sacher
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cacao amaro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta Sacher'), 40),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta Sacher'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta Sacher'), 120),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta Sacher'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta Sacher'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Confettura di albicocche'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta Sacher'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cioccolato fondente'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torta Sacher'), 150);

-- Strudel di Mele
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mele'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Strudel di Mele'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Strudel di Mele'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uvetta'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Strudel di Mele'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cannella'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Strudel di Mele'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Strudel di Mele'), 60),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Strudel di Mele'), 40);

-- Babà
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Babà'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Babà'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Babà'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Babà'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Babà'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Rum'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Babà'), 100);

-- Tiramisu
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Savoiardi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tiramisu'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mascarpone'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tiramisu'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tiramisu'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tiramisu'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Caffè espresso'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tiramisu'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cacao amaro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tiramisu'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Liquore al caffè'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Tiramisu'), 50);

-- Crostata di Frutta
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crostata di Frutta'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crostata di Frutta'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crostata di Frutta'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crostata di Frutta'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Crema pasticcera'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crostata di Frutta'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Fragole'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crostata di Frutta'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mirtilli'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crostata di Frutta'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Gelatina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crostata di Frutta'), 20);

-- Torrone
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Mandorle'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torrone'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Miele'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torrone'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torrone'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Albumi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Torrone'), 2);

-- Panettone
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Panettone'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Panettone'), 20),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Panettone'), 3),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Panettone'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Panettone'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Canditi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Panettone'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uvetta'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Panettone'), 80);

-- Pandoro
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pandoro'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Lievito di birra'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pandoro'), 20),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pandoro'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pandoro'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pandoro'), 120),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vaniglia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pandoro'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero a velo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pandoro'), 50);

-- Zeppole di San Giuseppe
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Zeppole di San Giuseppe'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Zeppole di San Giuseppe'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Zeppole di San Giuseppe'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Zeppole di San Giuseppe'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Zeppole di San Giuseppe'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Zeppole di San Giuseppe'), 10),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Crema pasticcera'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Zeppole di San Giuseppe'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Amarene'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Zeppole di San Giuseppe'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero a velo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Zeppole di San Giuseppe'), 30),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Zeppole di San Giuseppe'), 500);

-- Sfogliatella Frolla
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantità)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Frolla'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Frolla'), 120),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Frolla'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Frolla'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Frolla'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Ricotta fresca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Frolla'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Semola di grano duro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Frolla'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Canditi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Frolla'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Frolla'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vaniglia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Frolla'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cannella'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Frolla'), 1);

