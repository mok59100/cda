DROP DATA BASE IF EXISTS cadeaux; 
CREATE DATABASE cadeaux DEFAULT CHARACTER SET utf8;
USE cadeaux;

CREATE TABLE Lutins(
   Id_Lutins INT PRIMARY KEY,
   numero_ident INT,
   nom VARCHAR(50),
   prenom VARCHAR(50)
  
) ENGINE=InnoDB;

CREATE TABLE Traineaux(
   Id_Traineaux INT PRIMARY KEY,
   numeroTraineau INT,
   taille INT,
   dateMiseEnService DATE,
   dateRevision DATE
 
) ENGINE=InnoDB;

CREATE TABLE livraisons(
   Id_livraisons INT PRIMARY KEY,
   numeroUniq INT,
   heureDepartTournee DATETIME
   
) ENGINE=InnoDB;

CREATE TABLE cadeaux(
   Id_cadeaux INT,
   numeroUniq INT,
   designation VARCHAR(50),
   Id_livraisons INT NOT NULL,
   PRIMARY KEY(Id_cadeaux)
   
) ENGINE=InnoDB;

CREATE TABLE rennes(
   Id_rennes INT PRIMARY KEY,
   nom VARCHAR(50),
   sexe VARCHAR(50),
   dateNaissance DATE
   
) ENGINE=InnoDB;

CREATE TABLE Enfants(
   Id_Enfants INT,
   numero_d_ident INT,
   nom VARCHAR(50),
   prenom VARCHAR(50),
   adresse VARCHAR(80),
   sexe VARCHAR(50),
   voeux VARCHAR(80),
   pourcentageSagesse INT,
   Id_cadeaux INT NOT NULL,
   PRIMARY KEY(Id_Enfants)
   
) ENGINE=InnoDB;

CREATE TABLE dispose(
   Id_Traineaux INT,
   Id_livraisons INT,
   PRIMARY KEY(Id_Traineaux, Id_livraisons)
   
) ENGINE=InnoDB;

CREATE TABLE assurer(
   Id_Lutins INT,
   Id_livraisons INT,
   PRIMARY KEY(Id_Lutins, Id_livraisons)
   
) ENGINE=InnoDB;

CREATE TABLE conduit(
   Id_Lutins INT,
   Id_Traineaux INT,
   dateResponsabilte DATE,
   PRIMARY KEY(Id_Lutins, Id_Traineaux)
   
) ENGINE=InnoDB;

CREATE TABLE tire(
   Id_Traineaux INT,
   Id_rennes INT,
   PRIMARY KEY(Id_Traineaux, Id_rennes)
   
) ENGINE=InnoDB;

CREATE TABLE participe(
   Id_livraisons INT,
   Id_rennes INT,
   PRIMARY KEY(Id_livraisons, Id_rennes)
   
) ENGINE=InnoDB;


ALTER TABLE cadeaux
ADD CONSTRAINT FK_cadeaux_livraisons
FOREIGN KEY(Id_livraisons) REFERENCES livraisons(Id_livraisons)

CREATE TABLE Enfants
ADD CONSTRAINT FK_Enfants_cadeaux
FOREIGN KEY(Id_cadeaux) REFERENCES cadeaux(Id_cadeaux)

CREATE TABLE dispose
ADD CONSTRAINT FK_dispose_Traineaux
FOREIGN KEY(Id_Traineaux) REFERENCES Traineaux(Id_Traineaux),
ADD CONSTRAINT FK_dispose_livraisons
   FOREIGN KEY(Id_livraisons) REFERENCES livraisons(Id_livraisons);


CREATE TABLE assurer
ADD CONSTRAINT FK_assurer_Lutins
FOREIGN KEY(Id_Lutins) REFERENCES Lutins(Id_Lutins),
ADD CONSTRAINT FK_assurer_livraisons
FOREIGN KEY(Id_livraisons) REFERENCES livraisons(Id_livraisons)



CREATE TABLE conduit
ADD CONSTRAINT FK_conduit_Lutins
FOREIGN KEY(Id_Lutins) REFERENCES Lutins(Id_Lutins),
ADD CONSTRAINT FK_conduit_Traineaux
FOREIGN KEY(Id_Traineaux) REFERENCES Traineaux(Id_Traineaux)


CREATE TABLE tire
ADD CONSTRAINT FK_tire_Traineaux
FOREIGN KEY(Id_Traineaux) REFERENCES Traineaux(Id_Traineaux),
ADD CONSTRAINT FK_tire_rennes
FOREIGN KEY(Id_rennes) REFERENCES rennes(Id_rennes)

CREATE TABLE participe
ADD CONSTRAINT FK_participe_livraisons
FOREIGN KEY(Id_livraisons) REFERENCES livraisons(Id_livraisons),
ADD CONSTRAINT FK_participe_rennes
FOREIGN KEY(Id_rennes) REFERENCES rennes(Id_rennes);