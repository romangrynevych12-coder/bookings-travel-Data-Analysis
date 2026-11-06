-- Business Question 3:
-- Which property type generates the highest gross booking value?
SELECT 
	property_type
	 ,COUNT(*) AS completed_bookings
	 ,SUM(total_amount) AS total_booking_value
	 ,ROUND(AVG(total_amount), 2) AS average_booking_value
FROM bookings 
WHERE status = 'Completed'
GROUP BY property_type
ORDER BY total_booking_value DESC;
