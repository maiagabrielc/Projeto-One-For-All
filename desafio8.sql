SELECT art.name AS artista,
alb.album AS album
FROM SpotifyClone.albums AS alb
JOIN SpotifyClone.artist as art
ON art.artist_id = alb.artist_id
WHERE art.name = 'Walter Phoenix';
