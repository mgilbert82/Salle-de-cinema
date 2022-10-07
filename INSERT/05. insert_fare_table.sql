/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Insérer des données factices dans la table */
INSERT INTO
    t_fare (f_name, f_amount)
VALUES
    ('Plein tarif', 9.20),
    ('Etudiant', 7.60),
    ('Moins de 14 ans', 5.90);