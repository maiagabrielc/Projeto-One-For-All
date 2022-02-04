SELECT COUNT(play.song_played) AS quantidade_musicas_no_historico
FROM SpotifyClone.plays AS play
JOIN SpotifyClone.user AS us
ON play.user_id = us.user_id
WHERE us.user_name = 'Bill';
