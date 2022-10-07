/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Insérer des données factices dans la table */
INSERT INTO
    t_employee_permission (ep_e_id, ep_theater_id, ep_role)
VALUES
    (1, 4, 'ROLE_USER'),
    (2, 2, 'ROLE_USER'),
    (3, 3, 'ROLE_USER'),
    (4, 1, 'ROLE_ADMIN');