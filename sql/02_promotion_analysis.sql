SELECT
    has_promo
    ,COUNT(*) AS total_bookings
	,SUM(CASE
	 	WHEN status = 'Cancelled' THEN 1 
		 ELSE 0 
	 END) AS cancelled_bookings
	,ROUND(
	 	SUM(CASE
	 		WHEN status = 'Cancelled' THEN 1
	 		ELSE 0
		END) *100.0 / COUNT(*) ,
		2
	) AS cancellation_rate	 
FROM bookings
GROUP BY has_promo
ORDER BY cancellation_rate DESC;
