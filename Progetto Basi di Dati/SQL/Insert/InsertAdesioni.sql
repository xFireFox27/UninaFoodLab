INSERT INTO Adesione (UsernameUtente, IdSessionePresenza) VALUES 
('mario.bros', (SELECT IdSessione FROM SessioneInPresenza WHERE Luogo = 'MonteSantangelo' AND Aula = 'Aula1' AND Data = '2025-10-01 10:00:00')),
('francesco.deluca', (SELECT IdSessione FROM SessioneInPresenza WHERE Luogo = 'ViaClaudio' AND Aula = 'Aula2' AND Data = '2025-10-02 11:00:00')),
('kalidou.koulibaly', (SELECT IdSessione FROM SessioneInPresenza WHERE Luogo = 'PiazzaleTecchio' AND Aula = 'Aula3' AND Data = '2025-10-03 12:00:00')),
('rohan.kishibe', (SELECT IdSessione FROM SessioneInPresenza WHERE Luogo = 'PortaDiMassa' AND Aula = 'Aula4' AND Data = '2025-10-04 13:00:00')),
('donkey.kong', (SELECT IdSessione FROM SessioneInPresenza WHERE Luogo = 'ViaMarina' AND Aula = 'Aula5' AND Data = '2025-10-05 14:00:00')),
('goku.son', (SELECT IdSessione FROM SessioneInPresenza WHERE Luogo = 'MonteSantangelo' AND Aula = 'Aula1' AND Data = '2025-10-04 10:00:00'));