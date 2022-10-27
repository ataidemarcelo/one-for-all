SELECT 
    COUNT(c.nome) AS cancoes, 
    COUNT(DISTINCT alb.nome) AS albuns, 
    COUNT(DISTINCT art.nome) AS artistas

FROM SpotifyClone.cancoes AS c

INNER JOIN
    SpotifyClone.albuns AS alb ON c.album_id = alb.id
    
INNER JOIN
    SpotifyClone.artistas AS art ON alb.artista_id = art.id;