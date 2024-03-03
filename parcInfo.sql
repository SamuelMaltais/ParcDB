begin transaction;

CREATE TABLE Segment(
    indIp int PRIMARY KEY ,
    nomSegment varchar(255),
    etage int
);

CREATE TABLE Salle(
    nSalle int PRIMARY KEY,
    nomSalle varchar(255),
    nbPoste int,
    intIP int,
);

CREATE TABLE Poste(
    nPoste int PRIMARY KEY,
    nomPoste varchar(255),
    ad varchar(255),
);

CREATE TABLE Logiciel(
    nLog int PRIMARY KEY,
    nomLog varchar(255),
    dateAch Date,
    version varchar(255),
    typeLog varchar(255),
    prix float
);

CREATE TABLE Installer(
    numsIns int PRIMARY KEY,
    dateIns timestamp,
    delai int
);
CREATE TABLE Types(
    typeLp varchar(255) PRIMARY KEY,
    nomType varchar(255)
)


commit;
