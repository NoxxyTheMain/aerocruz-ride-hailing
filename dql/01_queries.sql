-- ============================================================
-- AeroCruz Ride-Hailing Management Database
-- DQL: Data Query Language / Business Questions
-- MySQL 8.0+
-- ============================================================

USE aerocruz_db;

-- ============================================================
-- 1. COUNT
-- Question: How many completed trips has each driver handled?
-- ============================================================
SELECT
    d.driver_id,
    CONCAT(d.first_name, ' ', d.last_name) AS driver_name,
    COUNT(t.trip_id) AS completed_trips
FROM drivers AS d
LEFT JOIN trips AS t
    ON d.driver_id = t.driver_id
    AND t.trip_status = 'completed'
GROUP BY d.driver_id, d.first_name, d.last_name
ORDER BY completed_trips DESC, driver_name ASC;

-- ============================================================
-- 2. SUM
-- Question: What is the total completed-trip revenue generated
-- by each driver?
-- ============================================================
SELECT
    d.driver_id,
    CONCAT(d.first_name, ' ', d.last_name) AS driver_name,
    SUM(t.fare) AS total_revenue
FROM drivers AS d
JOIN trips AS t
    ON d.driver_id = t.driver_id
WHERE t.trip_status = 'completed'
GROUP BY d.driver_id, d.first_name, d.last_name
ORDER BY total_revenue DESC;

-- ============================================================
-- 3. AVG
-- Question: What is the average fare of completed AeroCruz trips?
-- ============================================================
SELECT
    ROUND(AVG(fare), 2) AS average_completed_trip_fare
FROM trips
WHERE trip_status = 'completed';

-- ============================================================
-- 4. MIN/MAX
-- Question: What are the minimum and maximum fares charged on
-- completed trips?
-- ============================================================
SELECT
    MIN(fare) AS minimum_fare,
    MAX(fare) AS maximum_fare
FROM trips
WHERE trip_status = 'completed';

-- ============================================================
-- 5. GROUP BY
-- Question: How many completed trips and how much revenue did
-- each vehicle type generate?
-- ============================================================
SELECT
    vt.type_name,
    COUNT(t.trip_id) AS completed_trips,
    SUM(t.fare) AS total_revenue
FROM vehicle_types AS vt
JOIN vehicles AS v
    ON vt.vehicle_type_id = v.vehicle_type_id
JOIN trips AS t
    ON v.vehicle_id = t.vehicle_id
WHERE t.trip_status = 'completed'
GROUP BY vt.vehicle_type_id, vt.type_name
ORDER BY total_revenue DESC;

-- ============================================================
-- 6. GROUP BY
-- Question: What is the average rider rating received by each
-- driver?
-- ============================================================
SELECT
    d.driver_id,
    CONCAT(d.first_name, ' ', d.last_name) AS driver_name,
    ROUND(AVG(r.rating), 2) AS average_customer_rating,
    COUNT(r.rating_id) AS number_of_ratings
FROM drivers AS d
JOIN ratings AS r
    ON d.driver_id = r.driver_id
GROUP BY d.driver_id, d.first_name, d.last_name
ORDER BY average_customer_rating DESC, number_of_ratings DESC;

-- ============================================================
-- 7. ORDER BY
-- Question: Which five riders have spent the most on completed
-- AeroCruz trips?
-- ============================================================
SELECT
    r.rider_id,
    CONCAT(r.first_name, ' ', r.last_name) AS rider_name,
    SUM(t.fare) AS total_spent
FROM riders AS r
JOIN trips AS t
    ON r.rider_id = t.rider_id
WHERE t.trip_status = 'completed'
GROUP BY r.rider_id, r.first_name, r.last_name
ORDER BY total_spent DESC
LIMIT 5;

-- ============================================================
-- 8. ORDER BY - MULTI-COLUMN SORT
-- Question: Which drivers have the highest revenue, with ties
-- broken by driver name alphabetically?
-- ============================================================
SELECT
    d.driver_id,
    CONCAT(d.first_name, ' ', d.last_name) AS driver_name,
    COUNT(t.trip_id) AS completed_trips,
    SUM(t.fare) AS total_revenue
FROM drivers AS d
JOIN trips AS t
    ON d.driver_id = t.driver_id
WHERE t.trip_status = 'completed'
GROUP BY d.driver_id, d.first_name, d.last_name
ORDER BY total_revenue DESC, driver_name ASC;

-- ============================================================
-- 9. HAVING
-- Question: Which drivers have completed at least two trips?
-- ============================================================
SELECT
    d.driver_id,
    CONCAT(d.first_name, ' ', d.last_name) AS driver_name,
    COUNT(t.trip_id) AS completed_trips
FROM drivers AS d
JOIN trips AS t
    ON d.driver_id = t.driver_id
WHERE t.trip_status = 'completed'
GROUP BY d.driver_id, d.first_name, d.last_name
HAVING COUNT(t.trip_id) >= 2
ORDER BY completed_trips DESC;

-- ============================================================
-- 10. HAVING
-- Question: Which vehicle types have generated more than KES
-- 3,000 in completed-trip revenue?
-- ============================================================
SELECT
    vt.type_name,
    SUM(t.fare) AS total_revenue
FROM vehicle_types AS vt
JOIN vehicles AS v
    ON vt.vehicle_type_id = v.vehicle_type_id
JOIN trips AS t
    ON v.vehicle_id = t.vehicle_id
WHERE t.trip_status = 'completed'
GROUP BY vt.vehicle_type_id, vt.type_name
HAVING SUM(t.fare) > 3000
ORDER BY total_revenue DESC;

-- ============================================================
-- 11. SCALAR SUBQUERY
-- Question: Which completed trips had a fare greater than the
-- overall average completed-trip fare?
-- ============================================================
SELECT
    t.trip_id,
    CONCAT(r.first_name, ' ', r.last_name) AS rider_name,
    t.fare,
    t.distance_km
FROM trips AS t
JOIN riders AS r
    ON t.rider_id = r.rider_id
WHERE t.trip_status = 'completed'
  AND t.fare > (
      SELECT AVG(fare)
      FROM trips
      WHERE trip_status = 'completed'
  )
ORDER BY t.fare DESC;

-- ============================================================
-- 12. EXISTS
-- Question: Which drivers have completed at least one trip with
-- a fare above KES 800?
-- ============================================================
SELECT
    d.driver_id,
    CONCAT(d.first_name, ' ', d.last_name) AS driver_name
FROM drivers AS d
WHERE EXISTS (
    SELECT 1
    FROM trips AS t
    WHERE t.driver_id = d.driver_id
      AND t.trip_status = 'completed'
      AND t.fare > 800
)
ORDER BY driver_name ASC;

-- ============================================================
-- 13. CORRELATED SUBQUERY
-- Question: Which drivers have at least one trip whose fare is
-- greater than that driver's own average completed-trip fare?
-- ============================================================
SELECT
    t.trip_id,
    CONCAT(d.first_name, ' ', d.last_name) AS driver_name,
    t.fare
FROM trips AS t
JOIN drivers AS d
    ON t.driver_id = d.driver_id
WHERE t.trip_status = 'completed'
  AND t.fare > (
      SELECT AVG(t2.fare)
      FROM trips AS t2
      WHERE t2.driver_id = t.driver_id
        AND t2.trip_status = 'completed'
  )
ORDER BY driver_name ASC, t.fare DESC;

-- ============================================================
-- 14. JOIN / BUSINESS QUESTION
-- Question: Which vehicles have generated the most completed-trip
-- revenue?
-- ============================================================
SELECT
    v.vehicle_id,
    v.registration_number,
    CONCAT(v.make, ' ', v.model) AS vehicle,
    vt.type_name,
    COUNT(t.trip_id) AS completed_trips,
    SUM(t.fare) AS total_revenue
FROM vehicles AS v
JOIN vehicle_types AS vt
    ON v.vehicle_type_id = vt.vehicle_type_id
JOIN trips AS t
    ON v.vehicle_id = t.vehicle_id
WHERE t.trip_status = 'completed'
GROUP BY
    v.vehicle_id,
    v.registration_number,
    v.make,
    v.model,
    vt.type_name
ORDER BY total_revenue DESC;

-- ============================================================
-- 15. BUSINESS QUESTION
-- Question: Which payment methods are used most often for
-- completed-trip payments?
-- ============================================================
SELECT
    p.payment_method,
    COUNT(p.payment_id) AS number_of_payments,
    SUM(p.amount) AS total_processed
FROM payments AS p
JOIN trips AS t
    ON p.trip_id = t.trip_id
WHERE t.trip_status = 'completed'
  AND p.payment_status = 'paid'
GROUP BY p.payment_method
ORDER BY number_of_payments DESC, total_processed DESC;

-- ============================================================
-- 16. VIEW 1
-- Managerial view: driver performance summary.
-- ============================================================
CREATE OR REPLACE VIEW vw_driver_performance AS
SELECT
    d.driver_id,
    CONCAT(d.first_name, ' ', d.last_name) AS driver_name,
    COALESCE(trip_stats.completed_trips, 0) AS completed_trips,
    COALESCE(trip_stats.total_revenue, 0.00) AS total_revenue,
    COALESCE(trip_stats.average_fare, 0.00) AS average_fare,
    COALESCE(rating_stats.customer_rating, 0.00) AS customer_rating
FROM drivers AS d
LEFT JOIN (
    SELECT
        driver_id,
        COUNT(*) AS completed_trips,
        SUM(fare) AS total_revenue,
        ROUND(AVG(fare), 2) AS average_fare
    FROM trips
    WHERE trip_status = 'completed'
    GROUP BY driver_id
) AS trip_stats
    ON d.driver_id = trip_stats.driver_id
LEFT JOIN (
    SELECT
        driver_id,
        ROUND(AVG(rating), 2) AS customer_rating
    FROM ratings
    GROUP BY driver_id
) AS rating_stats
    ON d.driver_id = rating_stats.driver_id;

-- Example query against View 1:
-- Question: Which AeroCruz drivers currently have the strongest
-- combination of trip volume and customer rating?
SELECT *
FROM vw_driver_performance
ORDER BY completed_trips DESC, customer_rating DESC;

-- ============================================================
-- 17. VIEW 2
-- Managerial view: rider spending summary.
-- ============================================================
CREATE OR REPLACE VIEW vw_rider_spending AS
SELECT
    r.rider_id,
    CONCAT(r.first_name, ' ', r.last_name) AS rider_name,
    COUNT(t.trip_id) AS completed_trips,
    COALESCE(SUM(t.fare), 0.00) AS total_spent,
    ROUND(COALESCE(AVG(t.fare), 0.00), 2) AS average_trip_fare
FROM riders AS r
LEFT JOIN trips AS t
    ON r.rider_id = t.rider_id
    AND t.trip_status = 'completed'
GROUP BY r.rider_id, r.first_name, r.last_name;

-- Example query against View 2:
-- Question: Which riders have spent the most on AeroCruz rides?
SELECT *
FROM vw_rider_spending
ORDER BY total_spent DESC, rider_name ASC;
