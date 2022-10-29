SELECT 
    Count(*) AS quantidade_musicas_no_historico
    
FROM SpotifyClone.usuarios AS u

INNER JOIN 
    SpotifyClone.historico_reproducao AS h ON h.usuario_id = u.id

WHERE nome = "Barbara Liskov";