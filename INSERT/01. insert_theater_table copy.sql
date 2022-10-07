/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Insérer des données factices dans la table */
INSERT INTO
    t_theater (t_name, t_locality)
VALUES
    ('ALL', 'adresse du siège social'),
    (
        'UGC SQY',
        '1 avenue de la source de la bièvre Montigny le Bretonneux'
    ),
    (
        'UGC PARLY 2',
        '2 avenue Charles de Gaulles Le Chesnay Rocquencourt'
    ),
    (
        'UGC PLAISIR',
        '1170 avenue de Saint Germain Plaisir'
    );