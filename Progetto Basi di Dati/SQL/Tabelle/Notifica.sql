CREATE TABLE Notifica (
    IdNotifica SERIAL PRIMARY KEY,
    UsernameChef VARCHAR(100) NOT NULL,
    Oggetto VARCHAR(1000) NOT NULL,
    Testo VARCHAR(1000),
    DataInvio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT FK_notifica_chef FOREIGN KEY (UsernameChef) REFERENCES Chef(Username) ON DELETE CASCADE -- foreign key verso Chef, su eliminazione di un chef elimina tutte le notifiche da lui inviate

)