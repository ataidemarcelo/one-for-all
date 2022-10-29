SELECT
    c.nome AS nome,
    COUNT(*) AS reproducoes
FROM SpotifyClone.historico_reproducao AS r

INNER JOIN 
    SpotifyClone.cancoes AS c ON c.id = r.cancao_id
    
INNER JOIN 
    SpotifyClone.usuarios AS u ON u.id = r.usuario_id
    
INNER JOIN 
    SpotifyClone.planos AS p ON p.id = u.plano_id
    
WHERE p.nome = "gratuito" OR p.nome = "pessoal"

GROUP BY c.nome

ORDER BY c.nome;