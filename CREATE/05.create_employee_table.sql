/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Supprimer la table si elle existe déjà*/
DROP TABLE IF EXISTS t_employee;

/*Creation de la table */
CREATE TABLE t_employee (
    e_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    e_firstname VARCHAR(100) NOT NULL,
    e_lastname VARCHAR(100) NOT NULL,
    e_email VARCHAR(100) NOT NULL,
    e_password VARCHAR(255) NOT NULL
);