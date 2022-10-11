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
    (1, 1, 1, "2022-10-10 12:00:00"),
    (2, 1, 2, "2022-10-12 18:00:00"),
    (3, 2, 1, "2022-10-12 18:00:00"),
    (2, 1, 2, "2022-10-12 18:00:00"),
    (2, 3, 2, "2022-10-12 18:00:00"),
    (1, 3, 3, "2022-10-12 18:00:00");