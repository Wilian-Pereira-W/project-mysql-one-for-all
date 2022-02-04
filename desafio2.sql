SELECT 
	COUNT(DISTINCT m.id) AS cancoes,
    COUNT(DISTINCT ar.id) AS artistas,
    COUNT(DISTINCT ab.id) AS albuns
FROM SpotifyClone.musica AS m
INNER JOIN SpotifyClone.artista AS ar
INNER JOIN SpotifyClone.album AS ab;
