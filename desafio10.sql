SELECT son.song AS nome,
COUNT(play.song_played) AS reproducoes
FROM SpotifyClone.songs AS son
JOIN SpotifyClone.plays AS play
ON play.song_played = son.song_id
JOIN SpotifyClone.user AS us
ON us.user_id = play.user_id
WHERE us.id_plan IN(1, 4)
GROUP BY son.song
ORDER BY son.song;
