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
