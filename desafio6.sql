SELECT 
    MIN(p.valor) AS faturamento_minimo,
    MAX(p.valor) AS faturamento_maximo, 
    ROUND(AVG(p.valor), 2) AS faturamento_medio,
    ROUND(SUM(p.valor), 2) AS faturamento_total

FROM SpotifyClone.usuarios AS u

INNER JOIN SpotifyClone.planos AS p ON p.id = u.plano_id;