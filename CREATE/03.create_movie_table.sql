/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Supprimer la table si elle existe déjà*/
DROP TABLE IF EXISTS t_movie;

/*Creation de la table */
CREATE TABLE t_movie (
    m_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    m_name VARCHAR(100) NOT NULL,
);