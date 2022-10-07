/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Supprimer la table si elle existe déjà*/
DROP TABLE IF EXISTS t_detail_reservation;

/*Creation de la table */
CREATE TABLE t_detail_reservation (
    dr_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    dr_reservation_id INT NOT NULL,
    dr_fare_id INT NOT NULL,
    dr_pay_method_id INT NOT NULL,
    dr_seat INT NOT NULL,
    dr_line_amount DECIMAL NOT NULL,
    FOREIGN KEY(dr_reservation_id) REFERENCES t_reservation(r_id),
    FOREIGN KEY(dr_fare_id) REFERENCES t_fare(f_id),
    FOREIGN KEY(dr_pay_method_id) REFERENCES t_payment_method(pm_id)
);