CREATE DATABASE hopital_php;

USE hopital_php;

CREATE USER 'user1' IDENTIFIED BY 'hcetylop';

CREATE TABLE IF NOT EXISTS Pays
(
    Code VARCHAR(2) PRIMARY KEY NOT NULL,
    Libelle VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Motifs
(
    Code INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Libelle VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Sexe
(
    Code VARCHAR(1) PRIMARY KEY NOT NULL,
    Libelle VARCHAR(30) NOT NULL
);

CREATE TABLE Patients
(
    Code INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nom VARCHAR(30) NOT NULL,
    Prenom VARCHAR(30) NOT NULL,
    Sexe var(1) NOT NULL,
    Date_Naiss DATE NOT NULL,
    Num_Secu VARCHAR(15),
    Code_Pays VARCHAR(2) NOT NULL,
    Date_Entree DATE NOT NULL,
    Code_Motif VARCHAR(1) NOT NULL,


CONSTRAINT fk_sexe FOREIGN KEY (Sexe) REFERENCES Sexe (Code)
ON DELETE CASCADE,
CONSTRAINT fk_pays FOREIGN KEY (Code_Pays) REFERENCES Pays (Code)
ON DELETE CASCADE,
CONSTRAINT fk_motifs FOREIGN KEY (Code_Motif) REFERENCES Motifs (Code)
ON DELETE CASCADE

);

INSERT INTO PATIENTS VALUES( 1, 'SY', 'Omar', 'M', '1978-01-20', 178017830240455, 'FR', '2022-02-01', 1);
INSERT INTO PATIENTS VALUES( 2, 'DEPARDIEU', 'Gérard', 'M', '1948-12-27', 148127504406759, 'FR', '2022-04-05', 2);
INSERT INTO PATIENTS VALUES( 3, 'DUJARDIN', 'Jean', 'M', '1972-06-19', 172065903800855, 'FR', '2022-06-12', 3);
INSERT INTO PATIENTS VALUES( 4, 'RENO', 'Jean', 'M', '1948-07-30', NULL, 'MA', '2022-08-18', 1);
INSERT INTO PATIENTS VALUES( 5, 'COTILLARD', 'Marion', 'F', '1975-09-30', 275097503200542, 'FR', '2022-09-26', 1);
INSERT INTO PATIENTS VALUES( 6, 'CASSEL', 'Vincent', 'M', '1966-11-23', 166117500600711, 'FR', '2022-01-01', 3);
INSERT INTO PATIENTS VALUES( 7, 'GREEN', 'Eva', 'F', '1980-06-17', 280067500400733, 'FR', '2022-11-15', 2);
INSERT INTO PATIENTS VALUES( 8, 'EFIRA', 'Virginie', 'F', '1978-01-20', NULL, 'BE', '2022-10-30', 2);


INSERT INTO PAYS VALUES( 'FR', 'France');
INSERT INTO PAYS VALUES( 'BE', 'Belgique');
INSERT INTO PAYS VALUES( 'MA', 'Maroc');
INSERT INTO PAYS VALUES( 'TN', 'Tunisie');
INSERT INTO PAYS VALUES( 'DZ', 'Algérie');

INSERT INTO MOTIFS VALUES( 1, 'Consultation libre');
INSERT INTO MOTIFS VALUES( 2, 'Urgence');
INSERT INTO MOTIFS VALUES( 3, 'Prescription');

INSERT INTO SEXE VALUES( 'F', 'Féminin');
INSERT INTO SEXE VALUES( 'M', 'Masculin');
INSERT INTO SEXE VALUES( 'N', 'Ne se prononce pas');
