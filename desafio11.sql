SELECT son.song AS nome_musica,
CASE
	WHEN son.song LIKE '%Streets' THEN REPLACE(son.song, 'Streets','Code Review')
	WHEN son.song LIKE '%Her Own' THEN REPLACE(son.song, 'Her Own','Trybe')
	WHEN son.song LIKE '%Inner Fire' THEN REPLACE(son.song, 'Inner Fire','Project')
	WHEN son.song LIKE '%Silly' THEN REPLACE(son.song, 'Silly','Nice')
	WHEN son.song LIKE '%Circus' THEN REPLACE(son.song, 'Circus','Pull Request')
END AS novo_nome
FROM SpotifyClone.songs AS son
LEFT JOIN SpotifyClone.songs AS nos
ON son.song_id = nos.song_id
HAVING novo_nome <> 'null' 
ORDER BY son.song;
