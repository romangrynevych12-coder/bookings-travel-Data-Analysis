-- Analysis 04: Customer Booking Frequency Segmentation
-- Objective: Segment customers by booking frequency
-- and calculate the percentage of users in each segment.

WITH user_bookings AS (
    SELECT
        user_id
        ,COUNT(*) AS booking_count
    FROM bookings
    GROUP BY user_id
),
user_segments AS (
    SELECT
        user_id
        ,booking_count
        ,CASE
            WHEN booking_count = 1 THEN 'One-Time'
            WHEN booking_count BETWEEN 2 AND 3 THEN 'Occasional'
            WHEN booking_count >= 4 THEN 'Frequent'
        END AS customer_segment
    FROM user_bookings
)
SELECT
    customer_segment
    ,COUNT(*) AS total_users
    ,ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS percentage
FROM user_segments
GROUP BY customer_segment
ORDER BY total_users DESC;
