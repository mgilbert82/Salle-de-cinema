-- Active: 1664874026442@@127.0.0.1@8888
DROP SCHEMA IF EXISTS theater_database;

CREATE DATABASE theater_database DEFAULT CHARACTER SET = 'utf8mb4';

CREATE TABLE theater_database.role_user (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(255) NOT NULL
);

CREATE TABLE theater_database.rate (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    rate_name VARCHAR(255) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL
);

CREATE TABLE theater_database.user (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    theater_id INT NOT NULL FOREIGN KEY(theaterId) REFERENCES SCHEMA theater_database.theater(id),
    role_id INT NOT NULL FOREIGN KEY(roleId) REFERENCES SCHEMA theater_database.role.role_user(id)
);

CREATE TABLE theater_database.theater (
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    theater_name VARCHAR(255) NOT NULL,
    rate_id INT NOT NULL FOREIGN KEY(rateId) REFERENCES SCHEMA theater_database.rate(id)
);

CREATE TABLE theater_database.movie (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    movie_name VARCHAR(255) NOT NULL,
    room_number_id INT NOT NULL FOREIGN KEY(cinema_roomID) REFERENCES SCHEMA theater_database.cinema_room(id),
    theater_id INT NOT NULL FOREIGN KEY(theaterId) REFERENCES SCHEMA theater_database.theater(id)
);

CREATE TABLE theater_database.cinema_room (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    room_number INT NOT NULL,
    theater_id INT NOT NULL FOREIGN KEY(theaterId) REFERENCES SCHEMA theater_database.theater(id),
    movie_id INT NOT NULL FOREIGN KEY(movieId) REFERENCES SCHEMA theater_database.movie(id),
    available_place INT NOT NULL,
    schedule DATETIME NOT NULL
);