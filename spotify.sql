--Spotify dataset-- Sql project--


-- create table
DROP TABLE IF EXISTS spotify;
CREATE TABLE spotify (
    artist VARCHAR(255),
    track VARCHAR(255),
    album VARCHAR(255),
    album_type VARCHAR(50),
    danceability FLOAT,
    energy FLOAT,
    loudness FLOAT,
    speechiness FLOAT,
    acousticness FLOAT,
    instrumentalness FLOAT,
    liveness FLOAT,
    valence FLOAT,
    tempo FLOAT,
    duration_min FLOAT,
    title VARCHAR(255),
    channel VARCHAR(255),
    views FLOAT,
    likes BIGINT,
    comments BIGINT,
    licensed BOOLEAN,
    official_video BOOLEAN,
    stream BIGINT,
    energy_liveness FLOAT,
    most_played_on VARCHAR(50)
);

--EDA
SELECT COUNT(*) FROM spotify;

SELECT COUNT(DISTINCT artist) FROM spotify;

SELECT DISTINCT album_type FROM spotify;

SELECT duration_min FROM spotify;

SELECT * FROM spotify
WHERE duration_min = 0

DELETE FROM spotify
WHERE duration_min = 0

SELECT DISTINCT channel FROM spotify;

SELECT DISTINCT most_played_on FROM spotify;


/*
-- ------------------------------
--Data Analysis
--------------------------------
Retrieve the names of all tracks that have more than 1 billion streams.
List all albums along with their respective artists.
Get the total number of comments for tracks where licensed = TRUE.
Find all tracks that belong to the album type single.
Count the total number of tracks by each artist.
*/

-- Q.1 Retrieve the names of all tracks that have more than 1 billion streams.
SELECT * FROM spotify
WHERE stream >1000000000

-- Q.2  List all albums along with their respective artists.
SELECT album,artist
FROM spotify

--Q.3 Get the total number of comments for tracks where licensed = TRUE.
SELECT 
    SUM(comments) as total_comments 
FROM spotify
where licensed='true'

--Q.4 Find all tracks that belong to the album type single.
SELECT * FROM spotify
WHERE album_type = 'single'

--Q.5 Count the total number of tracks by each artist.
SELECT 
     artist,
	 COUNT(*) as total_no_tracks
FROM SPOTIFY
GROUP BY artist	 

/*
-----------------
Calculate the average danceability of tracks in each album.
Find the top 5 tracks with the highest energy values.
List all tracks along with their views and likes where official_video = TRUE.
For each album, calculate the total views of all associated tracks.
Retrieve the track names that have been streamed on Spotify more than YouTube.
*/

--Q.6 Calculate the average danceability of tracks in each album.
SELECT 
      album,
	  avg(danceability) as avg_danceability
FROM spotify
GROUP BY 1
ORDER BY 2 desc

--Q.7 Find the top 5 tracks with the highest energy values.
SELECT 
    track,
	MAX(energy)
FROM spotify
GROUP BY 1
LIMIT 5

--Q.8 List all tracks along with their views and likes where official_video = TRUE.
 SELECT 
    track,
	SUM(views) as total_views,
	SUM(likes) as total_likes
FROM spotify
WHERE official_video = TRUE
GROUP BY 1
ORDER BY 2 DESC


--Q.9 For each album, calculate the total views of all associated tracks.
SELECT 
   album,
   track,
   SUM(views)
FROM spotify
GROUP BY 1,2
ORDER BY 3 DESC

/*
--Find the top 3 most-viewed tracks for each artist using window functions.
Write a query to find tracks where the liveness score is above the average.
Use a WITH clause to calculate the difference between the highest and lowest energy values for tracks in each album.
*/
--Q.10 Find the top 3 most-viewed tracks for each artist using window functions.
WITH ranking_artist
AS
(SELECT 
	track,
	artist,
	SUM(views) as total_view,
	DENSE_RANK() OVER(PARTITION BY artist ORDER BY SUM(views) DESC) as rank
FROM spotify
GROUP BY 1,2
ORDER BY 1,3 DESC
)
SELECT * FROM ranking_artist
WHERE rank <=3

--Q.11 Write a query to find tracks where the liveness score is above the average.
SELECT 
	track,
	artist,
	liveness
FROM spotify
WHERE liveness > (SELECT AVG(liveness)  FROM spotify)

--Q.12  Use a WITH clause to calculate the difference between the highest and lowest energy values for tracks in each album.
WITH cte
AS
(SELECT 
   album,
   MAX(energy) as Highest_energy,
   MIN(energy) as Lowest_energy
FROM spotify
GROUP BY 1
)
SELECT 
   album,
   Highest_energy - Lowest_energy as energy_diff
FROM cte

--Q.13 Find tracks where the energy-to-liveness ratio is greater than 1.2.
SELECT track, energy, liveness
FROM spotify
WHERE (energy / liveness) > 1.2;


