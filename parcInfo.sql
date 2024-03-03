begin transaction;

CREATE TABLE Segment(
    indIP int PRIMARY KEY ,
    nomSegment varchar(255) NOT NULL,
    etage int
);

CREATE TABLE Salle(
    nSalle int PRIMARY KEY,
    nomSalle varchar(255) NOT NULL,
    nbPoste int,
    intIP int,
);

CREATE TABLE Poste(
    nPoste int PRIMARY KEY,
    nomPoste varchar(255) NOT NULL,
    ad varchar(255),
);

CREATE TABLE Logiciel(
    nLog int PRIMARY KEY,
    nomLog varchar(255),
    dateAch Date,
    version varchar(255),
    typeLog varchar(255),
    prix float CHECK (prix >= 0)
);

CREATE TABLE Installer(
    numsIns SERIAL PRIMARY KEY,
    dateIns timestamp NOT NULL DEFAULT GETDATE(),
    delai int
    CONSTRAINT chk_nomPoste_range CHECK (
    CASE
        WHEN nomPoste >= '0' AND nomPoste <= '255' THEN 1
        ELSE 0
    END = 1
    )

);
CREATE TABLE Types(
    typeLp varchar(255) PRIMARY KEY,
    nomType varchar(255)
)


commit;
