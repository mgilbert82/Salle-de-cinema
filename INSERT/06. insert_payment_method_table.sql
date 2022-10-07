/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Insérer des données factices dans la table */
INSERT INTO
    t_payment_method (pm_type)
VALUES
    ('Sur place'),
    ('En ligne');