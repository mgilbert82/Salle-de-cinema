/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Insérer des données factices dans la table */
INSERT INTO
    t_reservation (r_customer_id, r_cinema_session_id)
VALUES
    (1, 2),
    (2, 1);