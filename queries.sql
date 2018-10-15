SELECT ArtistName, YearEstablished
FROM Artist
WHERE YearEstablished > 1970
AND YearEstablished < 2000
ORDER BY YearEstablished DESC
;

SELECT a.Title,
       a.AlbumLength,
	   a.Label AS AlbumLabel,
	   ar.ArtistName,
	   ar.YearEstablished,
	   g.Label AS GenreLabel
FROM Album a
JOIN Artist ar ON a.ArtistId = ar.ArtistId
JOIN Genre g on a.GenreId = g.GenreId
;

SELECT *
FROM Song s
JOIN Album al ON al.AlbumID = s.AlbumID
JOIN Artist ar ON ar.ArtistID = s.ArtistID
JOIN Genre g ON g.GenreID = s.GenreID
;


--INSERT INTO Artist
--(ArtistName, YearEstablished)
--VALUES 
--("Lil Wayne", 1969)
--;

--SELECT * FROM Artist;

--DELETE FROM Artist Where ArtistId = 28
--;

--UPDATE Artist
--SET ArtistName = "Grace Patter and the Nocturnals"
--Where ArtistId = 29 
--;

--SELECT g."Label", COUNT(al."AlbumId") as AlbumCount
--FROM "Genre" g
--JOIN "Album" al ON al."GenreId" = g."GenreId"
--GROUP BY g."Label"
--ORDER BY AlbumCount DESC
--LIMIT 1
--;

--SELECT al.Title,
	--MAX(al.AlbumLength)
--FROM Album al
--;







INSERT INTO Artist VALUES ("Your Old Droog", 2013);

INSERT INTO Album
		"Packs",
		"03/10/2017",
		2462,
		"Fat Beats",
		ar.ArtistId,
		g.GenreId
		FROM Artist ar, Genre g WHERE ar.ArtistName="Your Old Droog" AND g.Label = "Rap";

INSERT INTO Song 
			"Grandma Hips",
			148,
			"03/10/2017",
			g.GenreId,
			ar.ArtistId,
			al.AlbumId
			FROM Genre g, Artist ar, Album al WHERE g.Label="Rap" AND ar.ArtistName="Your Old Droog" AND al.Title = "Packs";
			
INSERT INTO song 
			"Bangladesh",
			214,
			"03/10/2017",
			g.GenreId,
			ar.ArtistId,
			al.AlbumId
			FROM Genre g, Artist ar, Album al WHERE g.Label="Rap" AND ar.ArtistName="Your Old Droog" AND al.Title = "Packs";
			
INSERT INTO Song 
			"Rapman",
			233,
			"03/10/2017",
			g.GenreId,
			ar.ArtistId,
			al.AlbumId
			FROM Genre g, Artist ar, Album al WHERE g.Label="Rap" AND ar.ArtistName="Your Old Droog" AND al.Title = "Packs";		
			
			
SELECT s.Title SongTitle,  al.Title AlbumTitle, a.ArtistName
FROM Song s
LEFT JOIN Album al ON s.AlbumId = al.AlbumId
LEFT JOIN Artist ar ON al.ArtistId = ar.ArtistId
WHERE ar.ArtistName = "Your Old Droog";	
	
	
SELECT al.Title, COUNT(s.SongId) NumberOfSongs
FROM Song s, Album al
WHERE s.AlbumId = al.AlbumId
group by al.AlbumId;


SELECT ar.ArtistName, COUNT(s.SongId) NumberOfSongs
FROM Song s, Artist a
WHERE s.ArtistId = ar.ArtistID
group by ar.ArtistId;


SELECT g.Label, COUNT(s.SongId) NumberOfSongs
FROM Song s, Genre g
WHERE s.GenreId = g.GenreID
group by s.Genreid;	


SELECT al.Title, MAX(al.Albumlength) LongestAlbum
FROM album al;


SELECT s.Title SongTitle, al.Title AlbumTitle, MAX(s.SongLength) LongestSong
FROM Song s, Album al
WHERE s.Albumid = al.Albumid;