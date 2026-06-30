-- Dashboard KPIs

SELECT
    COUNT(*) AS total_trips,
    ROUND(SUM(trip_total),2) AS total_revenue,
    ROUND(AVG(trip_miles),2) AS avg_trip_distance,
    ROUND(AVG(trip_total),2) AS avg_revenue_per_trip
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`;
