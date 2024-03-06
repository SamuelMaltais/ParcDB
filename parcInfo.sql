begin transaction;

drop table segment;
drop table salle;
drop table poste;
drop table logiciel;
drop table installer;
drop table types;

CREATE TABLE Segment( 
		 indIP int PRIMARY KEY,
         nomSegment varchar(255) NOT NULL,
         etage int
		);

CREATE TABLE Salle (
    nSalle INT PRIMARY KEY,
    nomSalle VARCHAR(255) NOT NULL,
    nbPoste INT,
    indIP int
);



CREATE TABLE Poste (
    nPoste INT PRIMARY KEY,
    nomPoste VARCHAR(255) NOT NULL,
	indIP varchar(255),
    ad VARCHAR(255),
	typePoste varchar(255),
	nSalle varchar(255),
	CONSTRAINT check_yourField CHECK (typePoste IN ('UNIX', 'TX', 'PCWS', 'PCNT'))
);

CREATE TABLE Logiciel (
    nLog INT PRIMARY KEY,
    nomLog VARCHAR(255),
    dateAch DATE,
    version VARCHAR(255),
    typeLog VARCHAR(255),
    prix FLOAT CHECK (prix >= 0)
);

CREATE TABLE Installer( 
	numsIns SERIAL PRIMARY KEY,
	nPoste varchar(255),
	nLog varchar(255),
    dateIns timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    delai int,
	nomPoste VARCHAR(255) CHECK (nomPoste >= '0' AND nomPoste <= '255'
	)
);
	

CREATE TABLE Types( typeLp varchar(255) PRIMARY KEY,
    nomType varchar(255)
);

commit;

