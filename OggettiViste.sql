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
