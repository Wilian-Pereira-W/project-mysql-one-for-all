SELECT 
	u.nome AS usuario,
    COUNT(hr.usuario_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(m.duracao_segundos / 60), 2) AS total_minutos
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico_de_reproducao AS hr
ON u.id = hr.usuario_id 
INNER JOIN SpotifyClone.musica AS m
ON m.id = hr.musica_id
GROUP BY
u.nome
ORDER BY u.nome
;
