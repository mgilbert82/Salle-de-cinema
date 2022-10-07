/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Supprimer la table si elle existe déjà*/
DROP TABLE IF EXISTS t_room;

/*Creation de la table */
CREATE TABLE t_room (
    r_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    r_number INT NOT NULL,
    r_theater_id INT,
    FOREIGN KEY(r_theater_id) REFERENCES t_theater(t_id)
);