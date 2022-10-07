/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Supprimer la table si elle existe déjà*/
DROP TABLE IF EXISTS t_payment_method;

/*Creation de la table */
CREATE TABLE t_payment_method (
    pm_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    pm_type VARCHAR(100) NOT NULL
);