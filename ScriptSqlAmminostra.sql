-- Connessione al server
-- Questo comando è utilizzato per connettersi a una istanza di SQL Server.
-- Usa il nome del server e le credenziali appropriate per la connessione.
-- Esegui il login in SQL Server Management Studio (SSMS) o tramite uno script.
-- Esempio:
-- CONNECT TO 'NomeDelServer'

-- Creazione di un database
-- Questo comando crea un nuovo database nel server.
-- Assicurati che il nome del database sia unico.
CREATE DATABASE NomeDatabase;

-- Selezionare un database
-- Prima di eseguire operazioni su un database, selezionalo con il comando USE.
USE NomeDatabase;

-- Creazione di una tabella
-- Crea una nuova tabella con campi specificati.
CREATE TABLE NomeTabella (
    ID INT PRIMARY KEY,                -- ID è la chiave primaria della tabella
    Nome NVARCHAR(100),                -- Colonna per il nome, di tipo stringa
    DataNascita DATE                   -- Colonna per la data di nascita
);

-- Inserimento di dati in una tabella
-- Aggiungi nuovi dati alla tabella utilizzando il comando INSERT.
INSERT INTO NomeTabella (ID, Nome, DataNascita)
VALUES (1, 'Mario Rossi', '1980-01-01');

-- Selezione di dati da una tabella
-- Recupera tutti i dati dalla tabella.
SELECT * FROM NomeTabella;

-- Aggiornamento di dati in una tabella
-- Modifica i dati esistenti nella tabella con il comando UPDATE.
UPDATE NomeTabella
SET Nome = 'Giuseppe Verdi'
WHERE ID = 1;

-- Eliminazione di dati da una tabella
-- Rimuove i dati dalla tabella utilizzando il comando DELETE.
DELETE FROM NomeTabella WHERE ID = 1;

-- Creazione di un indice
-- Gli indici velocizzano le operazioni di ricerca nel database.
CREATE INDEX idx_nome ON NomeTabella(Nome);

-- Creazione di una vista
-- Le viste permettono di creare delle "tabelle virtuali" per semplificare le query.
CREATE VIEW VistaNomeTabella AS
SELECT Nome, DataNascita
FROM NomeTabella
WHERE DataNascita < '1990-01-01';

-- Creazione di un trigger
-- Un trigger è un evento che viene attivato automaticamente su un'azione specifica (inserimento, aggiornamento, cancellazione).
CREATE TRIGGER TriggerNomeTabella
ON NomeTabella
AFTER INSERT
AS
BEGIN
    PRINT 'Nuovo record inserito';
END;

-- Creazione di un utente e assegnazione dei permessi
-- Aggiungi un utente al database e assegna dei permessi specifici.
CREATE USER NomeUtente FOR LOGIN NomeLogin;
GRANT SELECT, INSERT ON NomeTabella TO NomeUtente;

-- Backup di un database
-- Esegui un backup completo del database in un file.
BACKUP DATABASE NomeDatabase
TO DISK = 'C:\Percorso\NomeDatabase.bak';

-- Ripristino di un database
-- Ripristina un database da un file di backup.
RESTORE DATABASE NomeDatabase
FROM DISK = 'C:\Percorso\NomeDatabase.bak';

-- Verifica dello stato del database
-- Controlla lo stato del database per problemi o errori.
DBCC CHECKDB(NomeDatabase);

-- Controllo delle query in esecuzione
-- Visualizza tutte le query in esecuzione nel sistema.
SELECT * FROM sys.dm_exec_requests;

-- Terminare una sessione di query
-- Puoi terminare una query in esecuzione utilizzando il comando KILL.
-- Esempio per terminare una query con ID di sessione 53:
KILL 53;

-- Gestione dei permessi
-- Revoca i permessi concessi ad un utente.
REVOKE SELECT, INSERT ON NomeTabella TO NomeUtente;

-- Rimozione di un database
-- Rimuove un database dal server.
DROP DATABASE NomeDatabase;

-- Rimozione di una tabella
-- Rimuove una tabella dal database.
DROP TABLE NomeTabella;

-- Rimozione di un indice
-- Rimuove un indice da una tabella.
DROP INDEX idx_nome ON NomeTabella;

-- Rimozione di una vista
-- Rimuove una vista dal database.
DROP VIEW VistaNomeTabella;

-- Rimozione di un trigger
-- Rimuove un trigger dal database.
DROP TRIGGER TriggerNomeTabella;

-- Visualizzazione delle informazioni di sistema
-- Mostra informazioni sul sistema di SQL Server, come versione e configurazione.
SELECT @@VERSION;

-- Uscita dalla connessione
-- Termina la sessione corrente di SQL Server.
EXIT;
