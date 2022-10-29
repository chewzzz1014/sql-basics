-- Find the names of all reviewers who rated Gone with the Wind.
SELECT DISTINCT name
FROM (SELECT *
FROM Movie
JOIN Rating
	USING(mID))
JOIN Reviewer
	USING(rID)
WHERE title = 'Gone with the Wind'

-- For any rating where the reviewer is the same as the director of the movie, return the reviewer name, movie title, and number of stars.
SELECT name, title, stars
FROM Movie
JOIN Rating
	USING(mID)
JOIN Reviewer
	USING(rID)
WHERE director = name;

-- For each rating that is the lowest (fewest stars) currently in the database, return the reviewer name, movie title, and number of stars.
SELECT name, title, stars
FROM
(SELECT *
FROM Rating
WHERE stars = (SELECT MIN(stars) FROM Rating))
JOIN Reviewer
	USING(rID)
JOIN Movie
	USING(mID)


-- List movie titles and average ratings, from highest-rated to lowest-rated. If two or more movies have the same average rating, list them in alphabetical order.
SELECT title, AVG(stars) as avg_rating
FROM Rating
JOIN Movie
	USING(mID)
GROUP BY mID
ORDER BY avg_rating DESC, title

-- Find the names of all reviewers who have contributed three or more ratings. (As an extra challenge, try writing the query without HAVING or without COUNT.)
SELECT name
FROM
(SELECT rID, COUNT(*) as c
FROM Rating
GROUP BY rID 
HAVING c >= 3)
JOIN Reviewer
	USING(rID)

-- Some directors directed more than one movie. For all such directors, return the titles of all movies directed by them, along with the director name. Sort by director name, then movie title. (As an extra challenge, try writing the query both with and without COUNT.)
SELECT title, director
FROM Movie
WHERE director IN

(SELECT director FROM (SELECT director, COUNT(*) C
FROM Movie
GROUP BY director
HAVING c > 1))
ORDER BY director, title
