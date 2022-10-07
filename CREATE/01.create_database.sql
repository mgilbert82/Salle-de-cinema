/* Suppression de la base de donnée si elle existe déjà*/
DROP SCHEMA IF EXISTS theater_database;

/* Création de la base de données*/
CREATE DATABASE theater_db DEFAULT CHARACTER SET = 'utf8mb4';

/*Création d'un utilisateur */
CREATE user theaterdbuser @localhost IDENTIFIED BY 'dbPassw0rd%';

/* Donner la permission à l'utilisateur créée précédement d'accéder à la base de données*/
GRANT ALL PRIVILEGES ON theater_db.* TO theaterdbuser @localhost;

/* Mise à jour des permissions*/
FLUSH PRIVILEGES;