SELECT
		u.nome AS usuario,
		COUNT(h.usuario_id) AS qt_de_musicas_ouvidas,
        ROUND(SUM(c.duracao_segundos)/60, 2) AS total_minutos

    from 
		SpotifyClone.usuarios AS u
        
    INNER JOIN 
		SpotifyClone.historico_reproducao AS h ON u.id = h.usuario_id
        
	INNER JOIN 
		SpotifyClone.cancoes AS c ON h.cancao_id = c.id
        
	GROUP BY u.nome ORDER BY u.nome;