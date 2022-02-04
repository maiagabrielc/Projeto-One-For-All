SELECT us.user_name AS usuario,
COUNT(play.song_played) AS qtde_musicas_ouvidas,
ROUND((SUM(son.duration_seconds) / 60), 2) AS total_minutos
FROM SpotifyClone.user AS us
JOIN SpotifyClone.plays AS play
ON us.user_id = play.user_id
JOIN SpotifyClone.songs AS son
ON play.song_played = son.song_id
GROUP BY us.user_name
ORDER BY us.user_name;
