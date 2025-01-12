-- Connessione al server (eseguito automaticamente in SSMS)
-- Per avviare una connessione, non esiste un comando esplicito SQL. Si usa tramite SSMS o uno script di connessione.
-- Esempio di connessione tramite ODBC o ADO.NET:
-- CONNECT TO 'NomeDelServer'

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

-- Eliminazione di una tabella
DROP TABLE NomeTabella;

-- Creazione di una colonna in una tabella esistente
ALTER TABLE NomeTabella ADD NuovaColonna NVARCHAR(50);

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

-- Visualizzazione delle tabelle del database
SELECT * FROM INFORMATION_SCHEMA.TABLES;

-- Visualizzazione delle colonne di una tabella
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'NomeTabella';
