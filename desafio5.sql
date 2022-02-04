SELECT 
	m.nome AS cancao,
    COUNT(m.id) AS reproducoes
FROM SpotifyClone.musica AS m
INNER JOIN SpotifyClone.historico_de_reproducao AS hr
ON hr.musica_id = m.id
GROUP BY 
m.nome
ORDER BY reproducoes DESC, m.nome
LIMIT 2;
