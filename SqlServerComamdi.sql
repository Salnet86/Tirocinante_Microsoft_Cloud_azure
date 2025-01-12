-- Connessione a SQL Server
-- Le connessioni a SQL Server avvengono tramite SSMS o altre interfacce di connessione come ADO.NET o ODBC
-- Non ci sono comandi espliciti per connettersi in SQL.

-- Creazione di un database
CREATE DATABASE NomeDatabase;

-- Selezione di un database
USE NomeDatabase;

-- Creazione di una tabella
CREATE TABLE NomeTabella (
    ID INT PRIMARY KEY,                
    Nome NVARCHAR(100),                
    DataNascita DATE                   
);

-- Creazione di una colonna in una tabella esistente
ALTER TABLE NomeTabella ADD NuovaColonna NVARCHAR(50);

-- Eliminazione di una tabella
DROP TABLE NomeTabella;

-- Eliminazione di una colonna da una tabella esistente
ALTER TABLE NomeTabella DROP COLUMN ColonnaDaEliminare;

-- Aggiunta di una chiave primaria
ALTER TABLE NomeTabella ADD CONSTRAINT PK_NomeTabella PRIMARY KEY (ID);

-- Eliminazione di una chiave primaria
ALTER TABLE NomeTabella DROP CONSTRAINT PK_NomeTabella;

-- Creazione di un indice
CREATE INDEX idx_nome ON NomeTabella(Nome);

-- Eliminazione di un indice
DROP INDEX idx_nome ON NomeTabella;

-- Creazione di un trigger
CREATE TRIGGER TriggerNomeTabella
ON NomeTabella
AFTER INSERT
AS
BEGIN
    PRINT 'Nuovo record inserito';
END;

-- Eliminazione di un trigger
DROP TRIGGER TriggerNomeTabella;

-- Creazione di una vista
CREATE VIEW VistaNomeTabella AS
SELECT Nome, DataNascita
FROM NomeTabella;

-- Eliminazione di una vista
DROP VIEW VistaNomeTabella;

-- Creazione di una funzione
CREATE FUNCTION NomeFunzione()
RETURNS INT
AS
BEGIN
    RETURN 1;
END;

-- Eliminazione di una funzione
DROP FUNCTION NomeFunzione;

-- Creazione di un utente
CREATE USER NomeUtente FOR LOGIN NomeLogin;

-- Assegnazione di permessi ad un utente
GRANT SELECT, INSERT ON NomeTabella TO NomeUtente;

-- Revoca di permessi ad un utente
REVOKE SELECT, INSERT ON NomeTabella TO NomeUtente;

-- Eliminazione di un utente
DROP USER NomeUtente;

-- Creazione di un login
CREATE LOGIN NomeLogin WITH PASSWORD = 'PasswordSicura';

-- Eliminazione di un login
DROP LOGIN NomeLogin;

-- Creazione di un ruolo
CREATE ROLE NomeRuolo;

-- Assegnazione di permessi ad un ruolo
GRANT SELECT, INSERT ON NomeTabella TO NomeRuolo;

-- Assegnazione di un ruolo ad un utente
EXEC sp_addrolemember 'NomeRuolo', 'NomeUtente';

-- Eliminazione di un ruolo
DROP ROLE NomeRuolo;

-- Visualizzazione delle tabelle nel database
SELECT * FROM INFORMATION_SCHEMA.TABLES;

-- Visualizzazione delle colonne di una tabella
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'NomeTabella';

-- Selezione di tutti i dati da una tabella
SELECT * FROM NomeTabella;

-- Inserimento di dati in una tabella
INSERT INTO NomeTabella (ID, Nome, DataNascita)
VALUES (1, 'Mario Rossi', '1980-01-01');

-- Aggiornamento di dati in una tabella
UPDATE NomeTabella
SET Nome = 'Giuseppe Verdi'
WHERE ID = 1;

-- Eliminazione di dati da una tabella
DELETE FROM NomeTabella WHERE ID = 1;

-- Eliminazione di tutte le righe da una tabella
TRUNCATE TABLE NomeTabella;

-- Backup completo di un database
BACKUP DATABASE NomeDatabase TO DISK = 'C:\Percorso\NomeDatabase.bak';

-- Backup differenziale di un database
BACKUP DATABASE NomeDatabase TO DISK = 'C:\Percorso\NomeDatabase_diff.bak' WITH DIFFERENTIAL;

-- Backup dei log delle transazioni
BACKUP LOG NomeDatabase TO DISK = 'C:\Percorso\NomeDatabase_log.trn';

-- Ripristino di un database da un backup completo
RESTORE DATABASE NomeDatabase FROM DISK = 'C:\Percorso\NomeDatabase.bak';

-- Ripristino di un database differenziale
RESTORE DATABASE NomeDatabase FROM DISK = 'C:\Percorso\NomeDatabase_diff.bak' WITH DIFFERENTIAL;

-- Ripristino di un log delle transazioni
RESTORE LOG NomeDatabase FROM DISK = 'C:\Percorso\NomeDatabase_log.trn';

-- Inizio di una transazione
BEGIN TRANSACTION;

-- Completamento della transazione
COMMIT TRANSACTION;

-- Annullamento della transazione
ROLLBACK TRANSACTION;

-- Visualizzazione delle sessioni attive
SELECT * FROM sys.dm_exec_sessions;

-- Visualizzazione delle query in esecuzione
SELECT * FROM sys.dm_exec_requests;

-- Verifica dell'integrità del database
DBCC CHECKDB(NomeDatabase);

-- Visualizzazione delle versioni del server
SELECT @@VERSION;

-- Controllo della concorrenza e dei lock
SELECT * FROM sys.dm_tran_locks;

-- Visualizzazione dei log di errore
EXEC xp_readerrorlog;

-- Visualizzazione delle informazioni di sistema
EXEC sp_help;

-- Uscita dalla connessione
EXIT;

-- Visualizzazione delle statistiche di esecuzione
SET STATISTICS IO ON;
SET STATISTICS TIME ON;

-- Reset delle statistiche
DBCC SQLPERF('logspace');

-- Creazione di un database su Azure SQL Database
CREATE DATABASE NomeDatabase;

-- Creazione di un utente con Azure Active Directory
CREATE USER [NomeUtente] FROM EXTERNAL PROVIDER;

-- Gestione dei firewall in Azure SQL
-- Aggiungere un IP al firewall di Azure per consentire l'accesso remoto
EXEC sp_set_firewall_rule @name = 'RegolaNome', @start_ip_address = 'xxx.xxx.xxx.xxx', @end_ip_address = 'xxx.xxx.xxx.xxx';

-- Ridimensionamento del database su Azure
ALTER DATABASE NomeDatabase MODIFY (EDITION = 'Basic', MAXSIZE = 5 GB);

-- Abilitazione della replica geografica (Geo-replica) in Azure SQL
-- Abilitare la geo-replica tra due regioni in Azure SQL
ALTER DATABASE NomeDatabase ADD REPLICATION TO 'NomeSecondario';

-- Monitoraggio delle risorse in Azure SQL
-- Visualizzare i dettagli di utilizzo delle risorse in Azure SQL Database
SELECT * FROM sys.dm_db_resource_stats;

-- Gestione dei piani di manutenzione su Azure SQL
-- Creare un piano di manutenzione per il backup automatizzato
EXEC sp_create_backup_plan @DatabaseName = 'NomeDatabase', @PlanName = 'PianoBackup';

-- Gestione della sicurezza in Azure SQL
-- Abilitazione della crittografia trasparente dei dati (TDE) su Azure SQL
ALTER DATABASE NomeDatabase SET ENCRYPTION ON;

-- Monitoraggio dei log di attività su Azure SQL
-- Visualizzare gli eventi di auditing nel database
SELECT * FROM sys.fn_get_audit_file('C:\Percorso\AuditLog*.sqlaudit', null, null);
