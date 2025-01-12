-- Creazione di un ruolo
CREATE ROLE NomeRuolo;

-- Assegnazione di permessi ad un ruolo
GRANT SELECT, INSERT ON NomeTabella TO NomeRuolo;

-- Assegnazione di un ruolo ad un utente
EXEC sp_addrolemember 'NomeRuolo', 'NomeUtente';

-- Eliminazione di un ruolo
DROP ROLE NomeRuolo;
