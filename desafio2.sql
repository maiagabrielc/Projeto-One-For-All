SELECT COUNT(son.song_id) AS cancoes,
COUNT(DISTINCT art.artist_id) AS artistas,
COUNT(DISTINCT alb.album_id) AS albuns
FROM SpotifyClone.songs AS son
JOIN SpotifyClone.albums AS alb
ON son.album_id = alb.album_id
JOIN SpotifyClone.artist AS art
ON art.artist_id = alb.artist_id;
