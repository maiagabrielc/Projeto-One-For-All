SELECT art.name AS artista,
alb.album AS album,
COUNT(fol.user_id) AS seguidores
FROM SpotifyClone.albums AS alb
JOIN SpotifyClone.artist AS art
ON art.artist_id = alb.artist_id
JOIN SpotifyClone.follows AS fol
ON fol.artist_id = art.artist_id
GROUP BY alb.album, art.name
ORDER BY seguidores DESC, art.name, alb.album;
