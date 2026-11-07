-- Analysis 05: Booking Lead Time vs Cancellation Rate
-- Objective: Compare cancellation rates across booking lead time segments.

WITH booking_segments AS (
    SELECT
        booking_id,
        lead_time_days,
        status,
        CASE
            WHEN lead_time_days BETWEEN 0 AND 7 THEN 'Last-minute'
            WHEN lead_time_days BETWEEN 8 AND 14 THEN 'Short-term'
            WHEN lead_time_days BETWEEN 15 AND 30 THEN 'Medium-term'
            WHEN lead_time_days >= 31 THEN 'Long-term'
        END AS lead_time_segment
    FROM bookings
)
SELECT
    lead_time_segment,
    COUNT(*) AS total_bookings,
    SUM(
        CASE
            WHEN status = 'Cancelled' THEN 1
            ELSE 0
        END
    ) AS cancelled_bookings,
    ROUND(
        SUM(CASE WHEN status = 'Cancelled' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS cancellation_rate
FROM booking_segments
GROUP BY lead_time_segment
ORDER BY cancellation_rate DESC;
