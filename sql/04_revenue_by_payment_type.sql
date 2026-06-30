-- Revenue by Payment Type

SELECT
    payment_type,
    ROUND(SUM(trip_total),2) AS total_revenue
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
WHERE payment_type IS NOT NULL
GROUP BY payment_type
ORDER BY total_revenue DESC;
