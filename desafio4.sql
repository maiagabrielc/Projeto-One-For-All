SELECT us.user_name AS usuario,
IF(
	DATEDIFF(DATE(MAX(pl.date_played)), CURRENT_DATE()) < -365,
    'Usuário inativo',
    'Usuário ativo'
) AS condicao_usuario
FROM SpotifyClone.user AS us
JOIN SpotifyClone.plays AS pl
ON pl.user_id = us.user_id
GROUP BY pl.user_id
ORDER BY us.user_name;
