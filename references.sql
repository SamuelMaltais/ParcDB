/*
    1. Poste.#indIP : clé étrangère vers
    Segment ;
    2. Poste.#typePoste : clé étrangère vers
    Types ;
    3. Poste.#nSalle : clé étrangère vers
    Salle ;
    4. Installer.#nPoste : clé étrangère
    vers Poste ;
    5. Installer.#nLog : clé étrangère vers
    Logiciel ;
    6. Logiciel.#typelog : clé étrangère
    vers Types.
    7. Salle.#indIP : clé étrangère vers
    Segment.
*/
BEGIN TRANSACTION;

DELETE FROM logiciel
WHERE typelog = 'BeOS';

DELETE FROM salle
WHERE indip = '130.120.83';

ALTER TABLE Poste
ADD CONSTRAINT FK_Poste_Segment
FOREIGN KEY (indIP)
REFERENCES Segment(indIP);

ALTER TABLE Poste
ADD CONSTRAINT FK_Poste_Types
FOREIGN KEY (typePoste)
REFERENCES Types(typeLP);

ALTER TABLE Poste
ADD CONSTRAINT FK_Poste_Salle
FOREIGN KEY (nSalle)
REFERENCES Salle(nSalle);

ALTER TABLE Installer
ADD CONSTRAINT FK_Installer_Poste
FOREIGN KEY (nPoste)
REFERENCES Poste(nPoste);

ALTER TABLE Installer
ADD CONSTRAINT FK_Installer_Logiciel
FOREIGN KEY (nLog)
REFERENCES Logiciel(nLog);

ALTER TABLE Logiciel
ADD CONSTRAINT FK_Logiciel_Types
FOREIGN KEY (typelog)
REFERENCES Types(typeLP);

ALTER TABLE Salle
ADD CONSTRAINT FK_Salle_Segment
FOREIGN KEY (indIP)
REFERENCES Segment(indIP);



COMMIT;