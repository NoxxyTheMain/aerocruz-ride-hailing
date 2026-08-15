-- ============================================================
-- AeroCruz Ride-Hailing Management Database
-- DDL: Data Definition Language
-- MySQL 8.0+
-- ============================================================

CREATE DATABASE IF NOT EXISTS aerocruz_db;
USE aerocruz_db;

-- Drop objects in reverse dependency order so the script can be
-- rerun cleanly during development.
DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS trips;
DROP TABLE IF EXISTS driver_vehicle_assignments;
DROP TABLE IF EXISTS vehicles;
DROP TABLE IF EXISTS vehicle_types;
DROP TABLE IF EXISTS drivers;
DROP TABLE IF EXISTS riders;

-- ------------------------------------------------------------
-- Riders
-- ------------------------------------------------------------
CREATE TABLE riders (
    rider_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    registration_date DATE NOT NULL,
    status ENUM('active', 'suspended', 'inactive') NOT NULL DEFAULT 'active',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- ------------------------------------------------------------
-- Drivers
-- ------------------------------------------------------------
CREATE TABLE drivers (
    driver_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    license_number VARCHAR(30) NOT NULL UNIQUE,
    date_joined DATE NOT NULL,
    status ENUM('active', 'suspended', 'inactive') NOT NULL DEFAULT 'active',
    average_rating DECIMAL(3,2) NOT NULL DEFAULT 0.00,
    CONSTRAINT chk_driver_rating CHECK (average_rating BETWEEN 0 AND 5)
);

-- ------------------------------------------------------------
-- Vehicle types
-- ------------------------------------------------------------
CREATE TABLE vehicle_types (
    vehicle_type_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(30) NOT NULL UNIQUE,
    description VARCHAR(150) NOT NULL,
    base_fare DECIMAL(10,2) NOT NULL,
    per_km_rate DECIMAL(10,2) NOT NULL,
    passenger_capacity TINYINT UNSIGNED NOT NULL,
    status ENUM('active', 'inactive') NOT NULL DEFAULT 'active',
    CONSTRAINT chk_vehicle_base_fare CHECK (base_fare >= 0),
    CONSTRAINT chk_vehicle_per_km CHECK (per_km_rate >= 0),
    CONSTRAINT chk_vehicle_capacity CHECK (passenger_capacity BETWEEN 1 AND 12)
);

-- ------------------------------------------------------------
-- Vehicles
-- ------------------------------------------------------------
CREATE TABLE vehicles (
    vehicle_id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_type_id INT NOT NULL,
    registration_number VARCHAR(20) NOT NULL UNIQUE,
    make VARCHAR(40) NOT NULL,
    model VARCHAR(40) NOT NULL,
    manufacture_year YEAR NOT NULL,
    color VARCHAR(30) NOT NULL,
    status ENUM('available', 'assigned', 'maintenance', 'inactive') NOT NULL DEFAULT 'available',
    CONSTRAINT fk_vehicle_type
        FOREIGN KEY (vehicle_type_id) REFERENCES vehicle_types(vehicle_type_id),
    CONSTRAINT chk_vehicle_year CHECK (manufacture_year BETWEEN 2015 AND 2030)
);

-- ------------------------------------------------------------
-- Driver/vehicle assignment junction table
-- Composite primary key demonstrates the many-to-many
-- relationship between drivers and vehicles over time.
-- ------------------------------------------------------------
CREATE TABLE driver_vehicle_assignments (
    driver_id INT NOT NULL,
    vehicle_id INT NOT NULL,
    assigned_from DATE NOT NULL,
    assigned_until DATE NULL,
    PRIMARY KEY (driver_id, vehicle_id, assigned_from),
    CONSTRAINT fk_assignment_driver
        FOREIGN KEY (driver_id) REFERENCES drivers(driver_id),
    CONSTRAINT fk_assignment_vehicle
        FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id),
    CONSTRAINT chk_assignment_dates
        CHECK (assigned_until IS NULL OR assigned_until > assigned_from)
);

-- ------------------------------------------------------------
-- Trips
-- ------------------------------------------------------------
CREATE TABLE trips (
    trip_id INT AUTO_INCREMENT PRIMARY KEY,
    rider_id INT NOT NULL,
    driver_id INT NOT NULL,
    vehicle_id INT NOT NULL,
    requested_at DATETIME NOT NULL,
    pickup_time DATETIME NULL,
    dropoff_time DATETIME NULL,
    pickup_location VARCHAR(100) NOT NULL,
    dropoff_location VARCHAR(100) NOT NULL,
    distance_km DECIMAL(6,2) NOT NULL DEFAULT 0.00,
    fare DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    trip_status ENUM(
        'requested',
        'accepted',
        'in_progress',
        'completed',
        'cancelled'
    ) NOT NULL DEFAULT 'requested',
    CONSTRAINT fk_trip_rider
        FOREIGN KEY (rider_id) REFERENCES riders(rider_id),
    CONSTRAINT fk_trip_driver
        FOREIGN KEY (driver_id) REFERENCES drivers(driver_id),
    CONSTRAINT fk_trip_vehicle
        FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id),
    CONSTRAINT chk_trip_distance CHECK (distance_km >= 0),
    CONSTRAINT chk_trip_fare CHECK (fare >= 0),
    CONSTRAINT chk_trip_times
        CHECK (
            pickup_time IS NULL
            OR dropoff_time IS NULL
            OR dropoff_time >= pickup_time
        )
);

-- ------------------------------------------------------------
-- Payments
-- One payment record per trip in this project.
-- ------------------------------------------------------------
CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    trip_id INT NOT NULL UNIQUE,
    amount DECIMAL(10,2) NOT NULL,
    payment_method ENUM(
        'M-Pesa',
        'Card',
        'Cash',
        'AeroCruz Wallet'
    ) NOT NULL,
    paid_at DATETIME NOT NULL,
    payment_status ENUM('pending', 'paid', 'refunded', 'failed') NOT NULL DEFAULT 'pending',
    transaction_reference VARCHAR(40) NOT NULL UNIQUE,
    CONSTRAINT fk_payment_trip
        FOREIGN KEY (trip_id) REFERENCES trips(trip_id),
    CONSTRAINT chk_payment_amount CHECK (amount >= 0)
);

-- ------------------------------------------------------------
-- Ratings
-- A completed trip can receive one rider rating.
-- ------------------------------------------------------------
CREATE TABLE ratings (
    rating_id INT AUTO_INCREMENT PRIMARY KEY,
    trip_id INT NOT NULL UNIQUE,
    rider_id INT NOT NULL,
    driver_id INT NOT NULL,
    rating TINYINT UNSIGNED NOT NULL,
    comment VARCHAR(255),
    rated_at DATETIME NOT NULL,
    CONSTRAINT fk_rating_trip
        FOREIGN KEY (trip_id) REFERENCES trips(trip_id),
    CONSTRAINT fk_rating_rider
        FOREIGN KEY (rider_id) REFERENCES riders(rider_id),
    CONSTRAINT fk_rating_driver
        FOREIGN KEY (driver_id) REFERENCES drivers(driver_id),
    CONSTRAINT chk_rating_value CHECK (rating BETWEEN 1 AND 5)
);
