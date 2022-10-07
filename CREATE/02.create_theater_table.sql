/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Supprimer la table si elle existe déjà*/
DROP TABLE IF EXISTS t_theater;

/*Creation de la table */
CREATE TABLE t_theater (
    t_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    t_name VARCHAR(100) NOT NULL,
    t_locality TEXT NOT NULL
);