/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Insérer des données factices dans la table */
INSERT INTO
    t_customer (c_firstname, c_lastname, c_email, c_password)
VALUES
    (
        'Jean',
        'Dujardin',
        'jeandujardin@gmail.com',
        'jeandujardin123'
    ),
    (
        'Amélie',
        'Poulain',
        'ameliepoulain@gmail.com',
        'ameliepoulain123'
    );