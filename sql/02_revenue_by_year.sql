-- Revenue by Year

SELECT
    EXTRACT(YEAR FROM trip_start_timestamp) AS trip_year,
    ROUND(SUM(trip_total),2) AS total_revenue
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
GROUP BY trip_year
ORDER BY trip_year;
