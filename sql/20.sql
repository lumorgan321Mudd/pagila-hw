/*
 * For each film, show how many actors appear in it.
 *
 * HINT:
 * Join film and film_actor.
 * Use a window function that does NOT need an ORDER BY clause inside OVER.
 */

SELECT film.title, count(*) OVER (PARTITION BY film.film_id) AS actor_count
FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
ORDER BY actor_count DESC, film.title COLLATE "C";
