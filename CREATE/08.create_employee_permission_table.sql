/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Supprimer la table si elle existe déjà*/
DROP TABLE IF EXISTS t_employee_permission;

/*Creation de la table */
CREATE TABLE t_employee_permission (
    ep_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ep_role VARCHAR(100) NOT NULL,
    ep_theater_id INT,
    ep_e_id INT NOT NULL,
    FOREIGN KEY(ep_theater_id) REFERENCES t_theater(t_id),
    FOREIGN KEY(ep_e_iD) REFERENCES t_employee(e_id)
);