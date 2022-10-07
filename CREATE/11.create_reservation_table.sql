/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Supprimer la table si elle existe déjà*/
DROP TABLE IF EXISTS t_reservation;

/*Creation de la table */
CREATE TABLE t_reservation (
    r_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    r_customer_id INT NOT NULL,
    r_cinema_session_id INT NOT NULL,
    FOREIGN KEY(r_customer_id) REFERENCES t_customer(c_id),
    FOREIGN KEY(r_cinema_session_id) REFERENCES t_cinema_session(cs_id)
);