/* Se positionner sur la base de données souhaité */
USE theater_db;

/* Insérer des données factices dans la table */
INSERT INTO
    t_employee (e_firstname, e_lastname, e_email, e_password)
VALUES
    ('John', 'Doe', 'johndoe@gmail.com', 'johndoe123'),
    (
        'Luke',
        'Skywalker',
        'lukeskywalker@gmail.com',
        'skywalker123'
    ),
    (
        'Jack',
        'Oneil',
        'jackoneil@gmail.com',
        'jackoneil123'
    ),
    (
        'Cassius',
        'Clay',
        'cassiusclay@gmail.com',
        'cassiusclay123'
    );