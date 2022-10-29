-- Find the titles of all movies directed by Steven Spielberg.
SELECT title
FROM Movie
WHERE director = 'Steven Spielberg';

-- Find all years that have a movie that received a rating of 4 or 5, and sort them in increasing order.
SELECT DISTINCT year
FROM Movie
JOIN Rating
	USING (mID)
WHERE stars IN (4, 5)
ORDER BY year;


-- Find the titles of all movies that have no ratings.
SELECT title 
FROM Movie
LEFT JOIN Rating
	USING(mID)
WHERE stars IS NULL;


--  Find the names of all reviewers who have ratings with a NULL value for the date.
SELECT name
FROM Reviewer
LEFT JOIN Rating
	USING(rID)
WHERE ratingDate IS NULL;


-- return the ratings data in a more readable format: reviewer name, movie title, stars, and ratingDate. Also, sort the data, first by reviewer name, then by movie title, and lastly by number of stars.
SELECT name, title, stars, ratingDate
FROM Reviewer r1
JOIN Rating r2
	USING (rID)
JOIN Movie m
	ON m.mID = r2.mID
ORDER BY name, title, stars;

-- For each movie that has at least one rating, find the highest number of stars that movie received. Return the movie title and number of stars. Sort by movie title.
SELECT title, stars
FROM 
(SELECT mID, MAX(stars) as stars
FROM Rating
GROUP BY mID)
JOIN Movie
	USING (mID)
ORDER BY title

-- For each movie, return the title and the 'rating spread', that is, the difference between highest and lowest ratings given to that movie. Sort by rating spread from highest to lowest, then by movie title.
SELECT title, ratingSpread
FROM (SELECT mID, MAX(stars)-MIN(stars) as ratingSpread
FROM Rating
GROUP BY mID)
JOIN Movie
	USING(mID)
ORDER BY ratingSpread DESC, title


