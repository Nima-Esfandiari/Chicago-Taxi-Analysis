-- Average Trip Distance by Year

SELECT
    EXTRACT(YEAR FROM trip_start_timestamp) AS trip_year,
    ROUND(AVG(trip_miles),2) AS avg_trip_miles
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
WHERE trip_miles IS NOT NULL
GROUP BY trip_year
ORDER BY trip_year;
