-- Inserimento di dati in una tabella
INSERT INTO NomeTabella (ID, Nome, DataNascita)
VALUES (1, 'Mario Rossi', '1980-01-01');

-- Selezione di dati da una tabella
SELECT * FROM NomeTabella;

-- Aggiornamento dei dati in una tabella
UPDATE NomeTabella
SET Nome = 'Giuseppe Verdi'
WHERE ID = 1;

-- Eliminazione di dati da una tabella
DELETE FROM NomeTabella WHERE ID = 1;

-- Eliminazione di tutte le righe di una tabella
TRUNCATE TABLE NomeTabella;
