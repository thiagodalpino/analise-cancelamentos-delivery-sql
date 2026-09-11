SELECT
	d.delivery_status,
	COUNT (*) AS total_pedidos,
	ROUND (AVG(o.order_metric_cycle_time), 2) AS tempo_medio_ciclo_minutos,
	ROUND (AVG(d.delivery_distance_meters), 2) AS media_distancia
FROM deliveries AS d
JOIN orders AS o
	ON d.delivery_order_id = o.order_id
GROUP BY d.delivery_status
ORDER BY tempo_medio_ciclo_minutos 
