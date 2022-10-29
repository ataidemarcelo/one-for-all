  SELECT 
		art.nome AS artista,
		alb.nome AS album,
		COUNT(*) AS seguidores
  
  FROM SpotifyClone.seguindo_artista AS s
  
  INNER JOIN SpotifyClone.artistas AS art ON art.id = s.artista_id
  
  INNER JOIN SpotifyClone.albuns AS alb ON alb.artista_id = art.id
  
  GROUP BY art.nome, alb.nome
  
  ORDER BY seguidores DESC, art.nome, alb.nome;