/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Insérer des données factices dans la table */
INSERT INTO
    t_detail_reservation (
        dr_reservation_id,
        dr_fare_id,
        dr_pay_method_id,
        dr_seat,
        dr_line_amount
    )
VALUES
    (1, 2, 2, 2, 15.20),
    (2, 1, 1, 3, 27.60);