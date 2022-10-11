/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Supprimer la table si elle existe déjà*/
DROP TABLE IF EXISTS t_cinema_session;

/*Creation de la table */
CREATE TABLE t_cinema_session (
    cs_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    cs_time_slot DATETIME NOT NULL,
    cs_theater_id INT,
    cs_movie_id INT,
    cs_room_id INT,
    FOREIGN KEY(cs_theater_id) REFERENCES t_theater(t_id),
    FOREIGN KEY(cs_movie_id) REFERENCES t_movie(m_id),
    FOREIGN KEY(cs_room_id) REFERENCES t_room(r_id)
);