begin transaction;

CREATE TABLE Segment( 
		 indIP varchar(15) PRIMARY KEY,
         nomSegment varchar(255) NOT NULL,
         etage int
		);

CREATE TABLE Salle (
    nSalle INT PRIMARY KEY,
    nomSalle VARCHAR(255) NOT NULL,
    nbPoste INT,
    intIP INT
);

CREATE TABLE Poste (
    nPoste INT PRIMARY KEY,
    nomPoste VARCHAR(255) NOT NULL,
    ad VARCHAR(255)
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
    dateIns timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    delai int,
	nomPoste VARCHAR(255) CHECK (nomPoste >= '0' AND nomPoste <= '255'
	)
);
	

CREATE TABLE Types( typeLp varchar(255) PRIMARY KEY,
                                                nomType varchar(255));

commit;

