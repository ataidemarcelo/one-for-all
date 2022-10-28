SELECT 
    nome AS cancao, 
    COUNT(h.cancao_id) AS reproducoes
		
	FROM SpotifyClone.cancoes AS c
	
	INNER JOIN 
		SpotifyClone.historico_reproducao AS h ON h.cancao_id = c.id
        
	GROUP BY cancao
	ORDER BY reproducoes DESC, cancao LIMIT 2;