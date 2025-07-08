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

-- Cucina Messicana

-- Chili di Carne
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
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

-- Baklava
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baklava'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baklava'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Olio di semi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baklava'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baklava'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Noci'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baklava'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Miele'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baklava'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baklava'), 50),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cannella'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baklava'), 5),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Baklava'), 100);

-- Sfogliatella Riccia
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Riccia'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Riccia'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Strutto'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Riccia'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Sale fino'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Riccia'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Ricotta fresca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Riccia'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Semola di grano duro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Riccia'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Riccia'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Riccia'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Canditi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Riccia'), 80),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Riccia'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vaniglia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Riccia'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cannella'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sfogliatella Riccia'), 1);

-- Pastiera Napoletana
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Farina 00'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pastiera Napoletana'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Burro'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pastiera Napoletana'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pastiera Napoletana'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pastiera Napoletana'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Grano cotto'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pastiera Napoletana'), 300),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Ricotta fresca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pastiera Napoletana'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pastiera Napoletana'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Uova di gallina'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pastiera Napoletana'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pastiera Napoletana'), 250),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Canditi'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pastiera Napoletana'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vaniglia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pastiera Napoletana'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Cannella'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Pastiera Napoletana'), 2);

-- Crème brûlée
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Panna fresca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crème brûlée'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tuorli d''uovo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crème brûlée'), 6),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crème brûlée'), 100),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vaniglia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crème brûlée'), 2),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero di canna'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Crème brûlée'), 60);

-- Gelato
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Latte intero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gelato'), 500),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Panna fresca'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gelato'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gelato'), 150),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Tuorli d''uovo'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gelato'), 4),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Vaniglia'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Gelato'), 2);

-- Sorbetto
INSERT INTO Composizione (IdIngrediente, IdRicetta, Quantita)
VALUES
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Fragole'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sorbetto'), 400),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Zucchero'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sorbetto'), 120),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Acqua'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sorbetto'), 200),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Limoni'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sorbetto'), 1),
    ((SELECT IdIngrediente FROM Ingrediente WHERE Nome = 'Ghiaccio'), 
     (SELECT IdRicetta FROM Ricetta WHERE Nome = 'Sorbetto'), 300);
