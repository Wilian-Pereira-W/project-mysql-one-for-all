SELECT 
	COUNT(hr.usuario_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_de_reproducao AS hr
INNER JOIN SpotifyClone.usuario AS us
ON us.id = hr.usuario_id
WHERE us.nome = 'Bill';
