/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Insérer des données factices dans la table */
INSERT INTO
    t_room (r_number, r_theater_id)
VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (1, 2),
    (2, 2),
    (1, 3);