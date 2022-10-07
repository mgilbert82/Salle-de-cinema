/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Supprimer la table si elle existe déjà*/
DROP TABLE IF EXISTS t_fare;

/*Creation de la table */
CREATE TABLE t_fare (
    f_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    f_name VARCHAR(100) NOT NULL,
    f_amount DECIMAL NOT NULL
);