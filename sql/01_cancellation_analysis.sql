-- Business Question 1:
-- Which property type has the highest cancellation rate?

SELECT
    property_type
    ,COUNT(*) AS total_bookings
    ,SUM(CASE WHEN status = 'Cancelled' THEN 1 ELSE 0 END) AS cancelled_bookings
    ,ROUND(
        SUM(CASE WHEN status = 'Cancelled' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*), 2
    ) AS cancellation_rate
FROM bookings
GROUP BY property_type
ORDER BY cancellation_rate DESC;
