CREATE DATABASE movie_analytics_db;
USE movie_analytics_db;

CREATE TABLE genres (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL
);

CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    movie_title VARCHAR(100) NOT NULL,
    genre_id INT,
    release_year INT,
    budget_millions DECIMAL(8,2),
    revenue_millions DECIMAL(8,2),
    rating DECIMAL(3,1),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);