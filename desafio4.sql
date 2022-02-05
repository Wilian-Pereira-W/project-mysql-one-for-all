SELECT 
	us.nome AS usuario,
	IF(MAX(YEAR(hr.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.historico_de_reproducao AS hr
ON us.id = hr.usuario_id
GROUP BY us.nome
ORDER BY us.nome;
