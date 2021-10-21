DROP DATABASE IF EXISTS EMPLOYE; 
CREATE DATABASE EMPLOYE DEFAULT CHARACTER SET utf8;
USE EMPLOYE;

CREATE TABLE departements(
   nodep INT PRIMARY KEY,
   nomdep VARCHAR(50) ,
   ville VARCHAR(50) 
  
) ENGINE=InnoDB;

CREATE TABLE grades(
   nograde INT PRIMARY KEY,
   salmin DECIMAL(19,4),
   salmax DECIMAL(19,4)
  

) ENGINE=InnoDB;

CREATE TABLE histofonctions(
   noemp INT ,
   date_nom DATE,
   fonction VARCHAR(50) 
  

) ENGINE=InnoDB;

CREATE TABLE employes(
   noemp INT PRIMARY KEY,
   nomemp VARCHAR(50) ,
   fonction VARCHAR(50) ,
   noresp INT,
   datemb DATE,
   sala DECIMAL(19,4),
   comm DECIMAL(19,4),
   nodep INT
   
) ENGINE=InnoDB;

ALTER TABLE employes
ADD CONSTRAINT FK_employes_departements
FOREIGN KEY(nodep) REFERENCES departements(nodep);
