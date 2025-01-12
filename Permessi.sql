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
