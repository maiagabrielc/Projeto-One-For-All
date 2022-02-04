SELECT son.song AS cancao,
COUNT(play.song_played) AS reproducoes
FROM SpotifyClone.songs AS son
JOIN SpotifyClone.plays AS play
ON son.song_id = play.song_played
WHERE son.song_id = play.song_played
GROUP BY son.song
HAVING reproducoes > 1
ORDER BY son.song
LIMIT 2;
