SELECT ROUND(MIN(pl.plan_value), 2) AS faturamento_minimo,
ROUND(MAX(pl.plan_value), 2) AS faturamento_maximo,
ROUND(AVG(pl.plan_value), 2) AS faturamento_medio,
ROUND(SUM(pl.plan_value), 2) AS faturamento_total
FROM SpotifyClone.plans AS pl
JOIN SpotifyClone.user AS us
ON us.id_plan = pl.plans_id;
