/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Supprimer la table si elle existe déjà*/
DROP TABLE IF EXISTS t_customer;

/*Creation de la table */
CREATE TABLE t_customer (
    c_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    c_firstname VARCHAR(100) NOT NULL,
    c_lastname VARCHAR(100) NOT NULL,
    c_email VARCHAR(100) NOT NULL,
    c_password VARCHAR(255) NOT NULL
);