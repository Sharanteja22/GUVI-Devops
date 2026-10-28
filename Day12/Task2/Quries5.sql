
SELECT movie_title, release_year, rating
FROM movies
WHERE rating >= 8.0
ORDER BY rating DESC;



SELECT g.genre_name,
       COUNT(m.movie_id) AS total_movies
FROM genres g
JOIN movies m ON g.genre_id = m.genre_id
GROUP BY g.genre_name
ORDER BY total_movies DESC;



SELECT g.genre_name,
       SUM(m.revenue_millions) AS total_revenue,
       ROUND(AVG(m.revenue_millions), 2) AS average_revenue
FROM genres g
JOIN movies m ON g.genre_id = m.genre_id
GROUP BY g.genre_name
ORDER BY total_revenue DESC;


SELECT movie_title, revenue_millions
FROM movies
WHERE revenue_millions = (
    SELECT MAX(revenue_millions)
    FROM movies
)
OR revenue_millions = (
    SELECT MIN(revenue_millions)
    FROM movies
);


