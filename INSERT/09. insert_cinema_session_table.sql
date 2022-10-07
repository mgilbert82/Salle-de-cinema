/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Insérer des données factices dans la table */
INSERT INTO
    t_cinema_session (
        cs_theater_id,
        cs_movie_id,
        cs_room_id,
        cs_time_slot
    )
VALUES
    (1, 1, 1, "12:00:00"),
    (2, 1, 2, "18:00:00"),
    (3, 2, 1, "10:00:00"),
    (2, 1, 2, "14:00:00"),
    (2, 3, 2, "19:00:00"),
    (1, 3, 3, "15:45:00");