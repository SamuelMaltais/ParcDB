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


COMMIT;