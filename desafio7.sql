SELECT
	ar.nome AS artista,
    al.nome AS album,
    COUNT(s.artista_id) AS seguidores
FROM SpotifyClone.artista AS ar
INNER JOIN SpotifyClone.album AS al
ON ar.id = al.artista_id
INNER JOIN SpotifyClone.seguidores AS s
ON al.artista_id = s.artista_id
GROUP BY
ar.nome, al.nome
ORDER BY seguidores DESC, ar.nome, al.nome;
