SELECT  u.nome As usuario,
    CASE
        WHEN MAX(YEAR(h.data_reproducao) >= '2021') THEN 'Usuário ativo'
        ELSE 'Usuário inativo'
    END AS status_usuario 
    
    FROM 
		SpotifyClone.historico_reproducao AS h
    
    INNER JOIN 
        SpotifyClone.usuarios AS u ON h.usuario_id = u.id
	 
	GROUP BY usuario
	ORDER BY usuario, status_usuario;