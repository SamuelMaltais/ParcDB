BEGIN TRANSACTION;

ALTER TABLE Segment
ALTER COLUMN indIP SET DATA TYPE varchar(255);

ALTER TABLE Salle
ALTER COLUMN indIP SET DATA TYPE varchar(255);

ALTER TABLE Salle
ALTER COLUMN nSalle SET DATA TYPE varchar(255);

ALTER TABLE Logiciel
ALTER COLUMN nLog SET DATA TYPE varchar(255);

ALTER TABLE Poste
ALTER COLUMN nPoste SET DATA TYPE varchar(255);

ALTER TABLE Installer
ALTER COLUMN dateIns DROP NOT NULL;

COMMIT;