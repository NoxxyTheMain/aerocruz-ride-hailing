-- ============================================================
-- AeroCruz Ride-Hailing Management Database
-- DML: Data Manipulation Language / Seed Data
-- MySQL 8.0+
-- ============================================================

USE aerocruz_db;

-- ------------------------------------------------------------
-- Riders: 15 realistic records
-- ------------------------------------------------------------

INSERT INTO riders (rider_id, first_name, last_name, phone, email, registration_date, status) VALUES (1, 'Allan', 'Senteu', '+254711000001', 'allan.senteu01@example.com', '2026-01-05', 'active');
INSERT INTO riders (rider_id, first_name, last_name, phone, email, registration_date, status) VALUES (2, 'Brian', 'Kiptoo', '+254711000002', 'brian.kiptoo02@example.com', '2026-01-07', 'active');
INSERT INTO riders (rider_id, first_name, last_name, phone, email, registration_date, status) VALUES (3, 'Carol', 'Wanjiku', '+254711000003', 'carol.wanjiku03@example.com', '2026-01-09', 'active');
INSERT INTO riders (rider_id, first_name, last_name, phone, email, registration_date, status) VALUES (4, 'Diana', 'Achieng', '+254711000004', 'diana.achieng04@example.com', '2026-01-11', 'active');
INSERT INTO riders (rider_id, first_name, last_name, phone, email, registration_date, status) VALUES (5, 'Daniel', 'Mwangi', '+254711000005', 'eric.mwangi05@example.com', '2026-01-14', 'active');
INSERT INTO riders (rider_id, first_name, last_name, phone, email, registration_date, status) VALUES (6, 'Faith', 'Njeri', '+254711000006', 'faith.njeri06@example.com', '2026-01-16', 'active');
INSERT INTO riders (rider_id, first_name, last_name, phone, email, registration_date, status) VALUES (7, 'philip', 'korir', '+254711000007', 'george.otieno07@example.com', '2026-01-19', 'active');
INSERT INTO riders (rider_id, first_name, last_name, phone, email, registration_date, status) VALUES (8, 'Hannah', 'Chebet', '+254711000008', 'hannah.chebet08@example.com', '2026-01-21', 'active');
INSERT INTO riders (rider_id, first_name, last_name, phone, email, registration_date, status) VALUES (9, 'Irene', 'Muthoni', '+254711000009', 'irene.muthoni09@example.com', '2026-01-24', 'active');
INSERT INTO riders (rider_id, first_name, last_name, phone, email, registration_date, status) VALUES (10, 'James', 'Kamau', '+254711000010', 'james.kamau10@example.com', '2026-01-27', 'active');
INSERT INTO riders (rider_id, first_name, last_name, phone, email, registration_date, status) VALUES (11, 'Kevin', 'Omondi', '+254711000011', 'kevin.omondi11@example.com', '2026-02-01', 'active');
INSERT INTO riders (rider_id, first_name, last_name, phone, email, registration_date, status) VALUES (12, 'Lucy', 'Wambui', '+254711000012', 'lucy.wambui12@example.com', '2026-02-03', 'active');
INSERT INTO riders (rider_id, first_name, last_name, phone, email, registration_date, status) VALUES (13, 'Mark', 'Kiplangat', '+254711000013', 'mark.kiplangat13@example.com', '2026-02-06', 'active');
INSERT INTO riders (rider_id, first_name, last_name, phone, email, registration_date, status) VALUES (14, 'Nancy', 'Akinyi', '+254711000014', 'nancy.akinyi14@example.com', '2026-02-09', 'active');
INSERT INTO riders (rider_id, first_name, last_name, phone, email, registration_date, status) VALUES (15, 'Peter', 'Mutua', '+254711000015', 'peter.mutua15@example.com', '2026-02-12', 'active');

-- ------------------------------------------------------------
-- Drivers: 15 realistic records
-- ------------------------------------------------------------

INSERT INTO drivers (driver_id, first_name, last_name, phone, email, license_number, date_joined, status, average_rating) VALUES (1, 'David', 'Maina', '+254722100001', 'david.maina01@aerocruz.example', 'DL-KE-10001', '2025-09-01', 'active', 4.80);
INSERT INTO drivers (driver_id, first_name, last_name, phone, email, license_number, date_joined, status, average_rating) VALUES (2, 'Esther', 'Naliaka', '+254722100002', 'esther.naliaka02@aerocruz.example', 'DL-KE-10002', '2025-09-08', 'active', 4.70);
INSERT INTO drivers (driver_id, first_name, last_name, phone, email, license_number, date_joined, status, average_rating) VALUES (3, 'Felix', 'Odhiambo', '+254722100003', 'felix.odhiambo03@aerocruz.example', 'DL-KE-10003', '2025-09-15', 'active', 4.90);
INSERT INTO drivers (driver_id, first_name, last_name, phone, email, license_number, date_joined, status, average_rating) VALUES (4, 'Grace', 'Wairimu', '+254722100004', 'grace.wairimu04@aerocruz.example', 'DL-KE-10004', '2025-09-20', 'active', 4.60);
INSERT INTO drivers (driver_id, first_name, last_name, phone, email, license_number, date_joined, status, average_rating) VALUES (5, 'Hassan', 'Abdi', '+254722100005', 'hassan.abdi05@aerocruz.example', 'DL-KE-10005', '2025-09-28', 'active', 4.50);
INSERT INTO drivers (driver_id, first_name, last_name, phone, email, license_number, date_joined, status, average_rating) VALUES (6, 'Ivy', 'Chepkoech', '+254722100006', 'ivy.chepkoech06@aerocruz.example', 'DL-KE-10006', '2025-10-03', 'active', 4.80);
INSERT INTO drivers (driver_id, first_name, last_name, phone, email, license_number, date_joined, status, average_rating) VALUES (7, 'Joseph', 'Karanja', '+254722100007', 'joseph.karanja07@aerocruz.example', 'DL-KE-10007', '2025-10-10', 'active', 4.40);
INSERT INTO drivers (driver_id, first_name, last_name, phone, email, license_number, date_joined, status, average_rating) VALUES (8, 'Mercy', 'Atieno', '+254722100008', 'mercy.atieno08@aerocruz.example', 'DL-KE-10008', '2025-10-17', 'active', 4.70);
INSERT INTO drivers (driver_id, first_name, last_name, phone, email, license_number, date_joined, status, average_rating) VALUES (9, 'Noah', 'Kibet', '+254722100009', 'noah.kibet09@aerocruz.example', 'DL-KE-10009', '2025-10-24', 'active', 4.90);
INSERT INTO drivers (driver_id, first_name, last_name, phone, email, license_number, date_joined, status, average_rating) VALUES (10, 'Olivia', 'Wekesa', '+254722100010', 'olivia.wekesa10@aerocruz.example', 'DL-KE-10010', '2025-11-01', 'active', 4.60);
INSERT INTO drivers (driver_id, first_name, last_name, phone, email, license_number, date_joined, status, average_rating) VALUES (11, 'Paul', 'Mbugua', '+254722100011', 'paul.mbugua11@aerocruz.example', 'DL-KE-10011', '2025-11-08', 'active', 4.50);
INSERT INTO drivers (driver_id, first_name, last_name, phone, email, license_number, date_joined, status, average_rating) VALUES (12, 'Rachel', 'Nyambura', '+254722100012', 'rachel.nyambura12@aerocruz.example', 'DL-KE-10012', '2025-11-15', 'active', 4.80);
INSERT INTO drivers (driver_id, first_name, last_name, phone, email, license_number, date_joined, status, average_rating) VALUES (13, 'Samuel', 'Kiprono', '+254722100013', 'samuel.kiprono13@aerocruz.example', 'DL-KE-10013', '2025-11-22', 'active', 4.70);
INSERT INTO drivers (driver_id, first_name, last_name, phone, email, license_number, date_joined, status, average_rating) VALUES (14, 'Terry', 'Auma', '+254722100014', 'terry.auma14@aerocruz.example', 'DL-KE-10014', '2025-11-29', 'active', 4.60);
INSERT INTO drivers (driver_id, first_name, last_name, phone, email, license_number, date_joined, status, average_rating) VALUES (15, 'Victor', 'Musyoka', '+254722100015', 'victor.musyoka15@aerocruz.example', 'DL-KE-10015', '2025-12-05', 'active', 4.90);

-- ------------------------------------------------------------
-- Vehicle types: 4 legitimate lookup records
-- ------------------------------------------------------------

INSERT INTO vehicle_types (vehicle_type_id, type_name, description, base_fare, per_km_rate, passenger_capacity, status) VALUES (1, 'Economy', 'Affordable everyday rides', 150.00, 38.00, 4, 'active');
INSERT INTO vehicle_types (vehicle_type_id, type_name, description, base_fare, per_km_rate, passenger_capacity, status) VALUES (2, 'Comfort', 'Extra legroom and newer vehicles', 220.00, 50.00, 4, 'active');
INSERT INTO vehicle_types (vehicle_type_id, type_name, description, base_fare, per_km_rate, passenger_capacity, status) VALUES (3, 'Premium', 'Executive rides with premium vehicles', 350.00, 75.00, 4, 'active');
INSERT INTO vehicle_types (vehicle_type_id, type_name, description, base_fare, per_km_rate, passenger_capacity, status) VALUES (4, 'XL', 'Larger vehicles for groups and luggage', 300.00, 65.00, 6, 'active');

-- ------------------------------------------------------------
-- Vehicles: 20 records
-- ------------------------------------------------------------

INSERT INTO vehicles (vehicle_id, vehicle_type_id, registration_number, make, model, manufacture_year, color, status) VALUES (1, 1, 'KDA 101A', 'Toyota', 'Vitz', 2020, 'Silver', 'assigned');
INSERT INTO vehicles (vehicle_id, vehicle_type_id, registration_number, make, model, manufacture_year, color, status) VALUES (2, 1, 'KDB 202B', 'Toyota', 'Axio', 2021, 'White', 'assigned');
INSERT INTO vehicles (vehicle_id, vehicle_type_id, registration_number, make, model, manufacture_year, color, status) VALUES (3, 1, 'KDC 303C', 'Honda', 'Fit', 2020, 'Blue', 'assigned');
INSERT INTO vehicles (vehicle_id, vehicle_type_id, registration_number, make, model, manufacture_year, color, status) VALUES (4, 1, 'KDD 404D', 'Mazda', 'Demio', 2022, 'Red', 'assigned');
INSERT INTO vehicles (vehicle_id, vehicle_type_id, registration_number, make, model, manufacture_year, color, status) VALUES (5, 2, 'KDE 505E', 'Toyota', 'Fielder', 2021, 'Black', 'assigned');
INSERT INTO vehicles (vehicle_id, vehicle_type_id, registration_number, make, model, manufacture_year, color, status) VALUES (6, 2, 'KDF 606F', 'Subaru', 'Impreza', 2022, 'Grey', 'assigned');
INSERT INTO vehicles (vehicle_id, vehicle_type_id, registration_number, make, model, manufacture_year, color, status) VALUES (7, 2, 'KDG 707G', 'Toyota', 'Premio', 2020, 'White', 'assigned');
INSERT INTO vehicles (vehicle_id, vehicle_type_id, registration_number, make, model, manufacture_year, color, status) VALUES (8, 1, 'KDH 808H', 'Nissan', 'Note', 2021, 'Silver', 'assigned');
INSERT INTO vehicles (vehicle_id, vehicle_type_id, registration_number, make, model, manufacture_year, color, status) VALUES (9, 3, 'KDJ 909J', 'Mazda', 'CX-5', 2022, 'Black', 'assigned');
INSERT INTO vehicles (vehicle_id, vehicle_type_id, registration_number, make, model, manufacture_year, color, status) VALUES (10, 3, 'KDK 010K', 'Toyota', 'Harrier', 2021, 'Pearl White', 'assigned');
INSERT INTO vehicles (vehicle_id, vehicle_type_id, registration_number, make, model, manufacture_year, color, status) VALUES (11, 4, 'KDL 111L', 'Nissan', 'X-Trail', 2020, 'Blue', 'assigned');
INSERT INTO vehicles (vehicle_id, vehicle_type_id, registration_number, make, model, manufacture_year, color, status) VALUES (12, 4, 'KDM 222M', 'Toyota', 'Noah', 2022, 'Grey', 'assigned');
INSERT INTO vehicles (vehicle_id, vehicle_type_id, registration_number, make, model, manufacture_year, color, status) VALUES (13, 4, 'KDN 333N', 'Toyota', 'Voxy', 2021, 'Black', 'assigned');
INSERT INTO vehicles (vehicle_id, vehicle_type_id, registration_number, make, model, manufacture_year, color, status) VALUES (14, 4, 'KDP 444P', 'Mitsubishi', 'Outlander', 2022, 'Red', 'assigned');
INSERT INTO vehicles (vehicle_id, vehicle_type_id, registration_number, make, model, manufacture_year, color, status) VALUES (15, 1, 'KDR 555R', 'Suzuki', 'Swift', 2023, 'White', 'assigned');
INSERT INTO vehicles (vehicle_id, vehicle_type_id, registration_number, make, model, manufacture_year, color, status) VALUES (16, 4, 'KDS 666S', 'Toyota', 'Sienta', 2022, 'Silver', 'assigned');
INSERT INTO vehicles (vehicle_id, vehicle_type_id, registration_number, make, model, manufacture_year, color, status) VALUES (17, 2, 'KDT 777T', 'Honda', 'Vezel', 2021, 'Green', 'assigned');
INSERT INTO vehicles (vehicle_id, vehicle_type_id, registration_number, make, model, manufacture_year, color, status) VALUES (18, 3, 'KDU 888U', 'Kia', 'Sportage', 2022, 'Grey', 'assigned');
INSERT INTO vehicles (vehicle_id, vehicle_type_id, registration_number, make, model, manufacture_year, color, status) VALUES (19, 3, 'KDV 999V', 'Toyota', 'Rav4', 2023, 'Blue', 'assigned');
INSERT INTO vehicles (vehicle_id, vehicle_type_id, registration_number, make, model, manufacture_year, color, status) VALUES (20, 4, 'KDW 123W', 'Hyundai', 'Staria', 2023, 'Black', 'assigned');

-- ------------------------------------------------------------
-- Driver/vehicle assignments: 20 records
-- The first 15 assignments run Jan-April; five replacement
-- vehicles are assigned from May onward.
-- ------------------------------------------------------------

INSERT INTO driver_vehicle_assignments (driver_id, vehicle_id, assigned_from, assigned_until) VALUES (1, 1, '2026-01-01', '2026-04-30');
INSERT INTO driver_vehicle_assignments (driver_id, vehicle_id, assigned_from, assigned_until) VALUES (2, 2, '2026-01-01', '2026-04-30');
INSERT INTO driver_vehicle_assignments (driver_id, vehicle_id, assigned_from, assigned_until) VALUES (3, 3, '2026-01-01', '2026-04-30');
INSERT INTO driver_vehicle_assignments (driver_id, vehicle_id, assigned_from, assigned_until) VALUES (4, 4, '2026-01-01', '2026-04-30');
INSERT INTO driver_vehicle_assignments (driver_id, vehicle_id, assigned_from, assigned_until) VALUES (5, 5, '2026-01-01', '2026-04-30');
INSERT INTO driver_vehicle_assignments (driver_id, vehicle_id, assigned_from, assigned_until) VALUES (6, 6, '2026-01-01', '2026-04-30');
INSERT INTO driver_vehicle_assignments (driver_id, vehicle_id, assigned_from, assigned_until) VALUES (7, 7, '2026-01-01', '2026-04-30');
INSERT INTO driver_vehicle_assignments (driver_id, vehicle_id, assigned_from, assigned_until) VALUES (8, 8, '2026-01-01', '2026-04-30');
INSERT INTO driver_vehicle_assignments (driver_id, vehicle_id, assigned_from, assigned_until) VALUES (9, 9, '2026-01-01', '2026-04-30');
INSERT INTO driver_vehicle_assignments (driver_id, vehicle_id, assigned_from, assigned_until) VALUES (10, 10, '2026-01-01', '2026-04-30');
INSERT INTO driver_vehicle_assignments (driver_id, vehicle_id, assigned_from, assigned_until) VALUES (11, 11, '2026-01-01', '2026-04-30');
INSERT INTO driver_vehicle_assignments (driver_id, vehicle_id, assigned_from, assigned_until) VALUES (12, 12, '2026-01-01', '2026-04-30');
INSERT INTO driver_vehicle_assignments (driver_id, vehicle_id, assigned_from, assigned_until) VALUES (13, 13, '2026-01-01', '2026-04-30');
INSERT INTO driver_vehicle_assignments (driver_id, vehicle_id, assigned_from, assigned_until) VALUES (14, 14, '2026-01-01', '2026-04-30');
INSERT INTO driver_vehicle_assignments (driver_id, vehicle_id, assigned_from, assigned_until) VALUES (15, 15, '2026-01-01', '2026-04-30');
INSERT INTO driver_vehicle_assignments (driver_id, vehicle_id, assigned_from, assigned_until) VALUES (1, 16, '2026-05-01', NULL);
INSERT INTO driver_vehicle_assignments (driver_id, vehicle_id, assigned_from, assigned_until) VALUES (2, 17, '2026-05-01', NULL);
INSERT INTO driver_vehicle_assignments (driver_id, vehicle_id, assigned_from, assigned_until) VALUES (3, 18, '2026-05-01', NULL);
INSERT INTO driver_vehicle_assignments (driver_id, vehicle_id, assigned_from, assigned_until) VALUES (4, 19, '2026-05-01', NULL);
INSERT INTO driver_vehicle_assignments (driver_id, vehicle_id, assigned_from, assigned_until) VALUES (5, 20, '2026-05-01', NULL);

-- ------------------------------------------------------------
-- Trips: 30 realistic ride records
-- ------------------------------------------------------------

INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (1, 1, 1, 1, '2026-01-10 07:00:00', '2026-01-10 07:08:00', '2026-01-10 07:33:00', 'Nairobi CBD', 'Westlands', 4.50, 321.00, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (2, 2, 2, 2, '2026-01-16 08:07:00', '2026-01-16 08:15:00', '2026-01-16 08:50:00', 'Kilimani', 'Upper Hill', 7.00, 416.00, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (3, 3, 3, 3, '2026-01-22 09:14:00', '2026-01-22 09:22:00', '2026-01-22 10:07:00', 'Karen', 'Nairobi CBD', 9.50, 511.00, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (4, 4, 4, 4, '2026-01-28 10:21:00', '2026-01-28 10:29:00', '2026-01-28 11:24:00', 'Westlands', 'Parklands', 9.90, 526.20, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (5, 5, 5, 5, '2026-02-03 11:28:00', '2026-02-03 11:36:00', '2026-02-03 12:41:00', 'South B', 'Nairobi CBD', 12.40, 840.00, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (6, 6, 6, 6, '2026-02-09 12:35:00', '2026-02-09 12:43:00', '2026-02-09 13:08:00', 'Kasarani', 'CBD', 14.90, 965.00, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (7, 7, 7, 7, '2026-02-15 13:42:00', NULL, NULL, 'Lavington', 'Yaya Centre', 0.00, 0.00, 'cancelled');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (8, 8, 8, 8, '2026-02-21 14:49:00', '2026-02-21 14:57:00', '2026-02-21 15:42:00', 'Ruaka', 'Westlands', 17.80, 826.40, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (9, 9, 9, 9, '2026-02-27 15:56:00', '2026-02-27 16:04:00', '2026-02-27 16:59:00', 'Ngong', 'Kilimani', 20.30, 1872.50, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (10, 10, 10, 10, '2026-03-05 16:03:00', '2026-03-05 16:11:00', '2026-03-05 17:16:00', 'Upper Hill', 'JKIA', 20.70, 1902.50, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (11, 11, 11, 11, '2026-03-11 07:10:00', '2026-03-11 07:18:00', '2026-03-11 07:43:00', 'Parklands', 'Kilimani', 5.20, 638.00, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (12, 12, 12, 12, '2026-03-17 08:17:00', '2026-03-17 08:25:00', '2026-03-17 09:00:00', 'South C', 'Westlands', 7.70, 800.50, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (13, 13, 13, 13, '2026-03-23 09:24:00', '2026-03-23 09:32:00', '2026-03-23 10:17:00', 'CBD', 'Gigiri', 8.10, 826.50, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (14, 14, 14, 14, '2026-03-29 10:31:00', '2026-03-29 10:39:00', '2026-03-29 11:34:00', 'Kileleshwa', 'CBD', 10.60, 989.00, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (15, 15, 15, 15, '2026-04-04 11:38:00', '2026-04-04 11:46:00', '2026-04-04 12:51:00', 'Rongai', 'Karen', 13.10, 647.80, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (16, 1, 1, 16, '2026-05-05 12:45:00', '2026-05-05 12:53:00', '2026-05-05 13:18:00', 'Thika Road', 'CBD', 13.50, 1177.50, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (17, 2, 2, 17, '2026-05-10 13:52:00', '2026-05-10 14:00:00', '2026-05-10 14:35:00', 'CBD', 'Kasarani', 16.00, 1020.00, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (18, 3, 3, 18, '2026-05-15 14:59:00', NULL, NULL, 'Karen', 'Westlands', 0.00, 0.00, 'cancelled');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (19, 4, 4, 19, '2026-05-20 15:06:00', '2026-05-20 15:14:00', '2026-05-20 16:09:00', 'Kilimani', 'JKIA', 18.90, 1767.50, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (20, 5, 5, 20, '2026-05-25 16:13:00', '2026-05-25 16:21:00', '2026-05-25 17:26:00', 'Westlands', 'Kikuyu', 21.40, 1691.00, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (21, 6, 1, 16, '2026-05-30 07:20:00', '2026-05-30 07:28:00', '2026-05-30 07:53:00', 'CBD', 'Runda', 5.90, 683.50, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (22, 7, 2, 17, '2026-06-04 08:27:00', '2026-06-04 08:35:00', '2026-06-04 09:10:00', 'Lang''ata', 'CBD', 6.30, 535.00, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (23, 8, 3, 18, '2026-06-09 09:34:00', '2026-06-09 09:42:00', '2026-06-09 10:27:00', 'Kileleshwa', 'Parklands', 8.80, 1010.00, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (24, 9, 4, 19, '2026-06-14 10:41:00', '2026-06-14 10:49:00', '2026-06-14 11:44:00', 'Ruaka', 'CBD', 11.30, 1197.50, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (25, 10, 5, 20, '2026-06-19 11:48:00', '2026-06-19 11:56:00', '2026-06-19 13:01:00', 'Ngong', 'Westlands', 11.70, 1060.50, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (26, 11, 1, 16, '2026-06-24 12:55:00', '2026-06-24 13:03:00', '2026-06-24 13:28:00', 'CBD', 'South C', 14.20, 1223.00, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (27, 12, 2, 17, '2026-06-29 13:02:00', NULL, NULL, 'Kasarani', 'Eastleigh', 0.00, 0.00, 'cancelled');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (28, 13, 3, 18, '2026-07-04 14:09:00', '2026-07-04 14:17:00', '2026-07-04 15:02:00', 'Gigiri', 'CBD', 17.10, 1632.50, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (29, 14, 4, 19, '2026-07-09 15:16:00', '2026-07-09 15:24:00', '2026-07-09 16:19:00', 'Karen', 'JKIA', 19.60, 1820.00, 'completed');
INSERT INTO trips (trip_id, rider_id, driver_id, vehicle_id, requested_at, pickup_time, dropoff_time, pickup_location, dropoff_location, distance_km, fare, trip_status) VALUES (30, 15, 5, 20, '2026-07-14 16:23:00', '2026-07-14 16:31:00', '2026-07-14 17:36:00', 'Westlands', 'Upper Hill', 22.10, 1736.50, 'completed');

-- ------------------------------------------------------------
-- Payments: one payment record for each trip
-- Cancelled trips are recorded as zero-value refunds.
-- ------------------------------------------------------------

INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (1, 1, 321.00, 'M-Pesa', '2026-01-10 08:00:00', 'paid', 'ACZ-000001');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (2, 2, 416.00, 'Card', '2026-01-16 09:07:00', 'paid', 'ACZ-000002');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (3, 3, 511.00, 'Cash', '2026-01-22 10:14:00', 'paid', 'ACZ-000003');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (4, 4, 526.20, 'AeroCruz Wallet', '2026-01-28 11:21:00', 'paid', 'ACZ-000004');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (5, 5, 840.00, 'M-Pesa', '2026-02-03 12:28:00', 'paid', 'ACZ-000005');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (6, 6, 965.00, 'Card', '2026-02-09 13:35:00', 'paid', 'ACZ-000006');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (7, 7, 0.00, 'M-Pesa', '2026-02-15 14:42:00', 'refunded', 'ACZ-000007');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (8, 8, 826.40, 'AeroCruz Wallet', '2026-02-21 15:49:00', 'paid', 'ACZ-000008');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (9, 9, 1872.50, 'M-Pesa', '2026-02-27 16:56:00', 'paid', 'ACZ-000009');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (10, 10, 1902.50, 'Card', '2026-03-05 17:03:00', 'paid', 'ACZ-000010');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (11, 11, 638.00, 'Cash', '2026-03-11 08:10:00', 'paid', 'ACZ-000011');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (12, 12, 800.50, 'AeroCruz Wallet', '2026-03-17 09:17:00', 'paid', 'ACZ-000012');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (13, 13, 826.50, 'M-Pesa', '2026-03-23 10:24:00', 'paid', 'ACZ-000013');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (14, 14, 989.00, 'Card', '2026-03-29 11:31:00', 'paid', 'ACZ-000014');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (15, 15, 647.80, 'Cash', '2026-04-04 12:38:00', 'paid', 'ACZ-000015');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (16, 16, 1177.50, 'AeroCruz Wallet', '2026-05-05 13:45:00', 'paid', 'ACZ-000016');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (17, 17, 1020.00, 'M-Pesa', '2026-05-10 14:52:00', 'paid', 'ACZ-000017');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (18, 18, 0.00, 'M-Pesa', '2026-05-15 15:59:00', 'refunded', 'ACZ-000018');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (19, 19, 1767.50, 'Cash', '2026-05-20 16:06:00', 'paid', 'ACZ-000019');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (20, 20, 1691.00, 'AeroCruz Wallet', '2026-05-25 17:13:00', 'paid', 'ACZ-000020');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (21, 21, 683.50, 'M-Pesa', '2026-05-30 08:20:00', 'paid', 'ACZ-000021');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (22, 22, 535.00, 'Card', '2026-06-04 09:27:00', 'paid', 'ACZ-000022');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (23, 23, 1010.00, 'Cash', '2026-06-09 10:34:00', 'paid', 'ACZ-000023');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (24, 24, 1197.50, 'AeroCruz Wallet', '2026-06-14 11:41:00', 'paid', 'ACZ-000024');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (25, 25, 1060.50, 'M-Pesa', '2026-06-19 12:48:00', 'paid', 'ACZ-000025');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (26, 26, 1223.00, 'Card', '2026-06-24 13:55:00', 'paid', 'ACZ-000026');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (27, 27, 0.00, 'M-Pesa', '2026-06-29 14:02:00', 'refunded', 'ACZ-000027');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (28, 28, 1632.50, 'AeroCruz Wallet', '2026-07-04 15:09:00', 'paid', 'ACZ-000028');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (29, 29, 1820.00, 'M-Pesa', '2026-07-09 16:16:00', 'paid', 'ACZ-000029');
INSERT INTO payments (payment_id, trip_id, amount, payment_method, paid_at, payment_status, transaction_reference) VALUES (30, 30, 1736.50, 'Card', '2026-07-14 17:23:00', 'paid', 'ACZ-000030');

-- ------------------------------------------------------------
-- Ratings: one rider rating for every completed trip
-- ------------------------------------------------------------

INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (1, 1, 1, 1, 5, 'Professional and courteous.', '2026-01-10 07:48:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (2, 2, 2, 2, 3, 'Good service and clean vehicle.', '2026-01-16 09:05:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (3, 3, 3, 3, 3, 'Good service and clean vehicle.', '2026-01-22 10:22:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (4, 4, 4, 4, 3, 'Good service and clean vehicle.', '2026-01-28 11:39:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (5, 5, 5, 5, 4, 'Friendly and drove carefully.', '2026-02-03 12:56:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (6, 6, 6, 6, 4, 'Friendly and drove carefully.', '2026-02-09 13:23:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (7, 8, 8, 8, 5, 'Professional and courteous.', '2026-02-21 15:57:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (8, 9, 9, 9, 3, 'Good service and clean vehicle.', '2026-02-27 17:14:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (9, 10, 10, 10, 4, 'Friendly and drove carefully.', '2026-03-05 17:31:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (10, 11, 11, 11, 4, 'Friendly and drove carefully.', '2026-03-11 07:58:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (11, 12, 12, 12, 3, 'Good service and clean vehicle.', '2026-03-17 09:15:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (12, 13, 13, 13, 3, 'Good service and clean vehicle.', '2026-03-23 10:32:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (13, 14, 14, 14, 5, 'Professional and courteous.', '2026-03-29 11:49:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (14, 15, 15, 15, 5, 'Professional and courteous.', '2026-04-04 13:06:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (15, 16, 1, 1, 4, 'Friendly and drove carefully.', '2026-05-05 13:33:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (16, 17, 2, 2, 3, 'Good service and clean vehicle.', '2026-05-10 14:50:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (17, 19, 4, 4, 3, 'Good service and clean vehicle.', '2026-05-20 16:24:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (18, 20, 5, 5, 4, 'Friendly and drove carefully.', '2026-05-25 17:41:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (19, 21, 6, 1, 5, 'Professional and courteous.', '2026-05-30 08:08:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (20, 22, 7, 2, 5, 'Professional and courteous.', '2026-06-04 09:25:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (21, 23, 8, 3, 3, 'Good service and clean vehicle.', '2026-06-09 10:42:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (22, 24, 9, 4, 3, 'Good service and clean vehicle.', '2026-06-14 11:59:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (23, 25, 10, 5, 4, 'Friendly and drove carefully.', '2026-06-19 13:16:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (24, 26, 11, 1, 4, 'Friendly and drove carefully.', '2026-06-24 13:43:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (25, 28, 13, 3, 5, 'Professional and courteous.', '2026-07-04 15:17:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (26, 29, 14, 4, 5, 'Professional and courteous.', '2026-07-09 16:34:00');
INSERT INTO ratings (rating_id, trip_id, rider_id, driver_id, rating, comment, rated_at) VALUES (27, 30, 15, 5, 4, 'Friendly and drove carefully.', '2026-07-14 17:51:00');

-- End of AeroCruz seed data.
