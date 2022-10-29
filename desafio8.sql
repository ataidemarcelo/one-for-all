SELECT 
    art.nome AS artista,
    alb.nome AS album

FROM SpotifyClone.albuns AS alb

INNER JOIN SpotifyClone.artistas AS art ON art.id = alb.artista_id

WHERE art.nome = 'Elis Regina'

ORDER BY art.nome;