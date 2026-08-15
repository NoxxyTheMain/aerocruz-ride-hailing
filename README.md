# AeroCruz Ride-Hailing Database

## Project Overview

**AeroCruz** is a fictional ride-hailing platform that connects riders with drivers and vehicles for on-demand transportation.

This project demonstrates the complete design and implementation of a relational database using **MySQL**, following the assignment's three-phase structure:

1. DDL — database schema and constraints
2. DML — realistic seed data
3. DQL — business-focused queries and views

The project is designed around a normalized ride-hailing domain rather than the prohibited `mamboleo_university` example.

## Objectives

The database demonstrates:

- Relational database design
- Primary and foreign keys
- Referential integrity
- Many-to-many relationships
- Composite keys
- AUTO_INCREMENT keys
- Data validation constraints
- Realistic data population
- Aggregate functions
- GROUP BY
- ORDER BY
- HAVING
- Scalar subqueries
- EXISTS/correlated subqueries
- Business-oriented views
- GitHub-ready SQL project organization

## Domain

AeroCruz manages:

- Riders
- Drivers
- Vehicle types
- Vehicles
- Driver/vehicle assignments
- Trips
- Payments
- Ratings

The driver/vehicle assignment table represents the many-to-many relationship between drivers and vehicles over time. A driver can operate different vehicles at different periods, and a vehicle can be assigned to different drivers over its operational history.

## Database Design

The project contains eight tables:

| Table | Purpose |
|---|---|
| `riders` | Stores AeroCruz customers |
| `drivers` | Stores registered drivers |
| `vehicle_types` | Defines ride categories such as Economy, Comfort, Premium and XL |
| `vehicles` | Stores vehicles used by the platform |
| `driver_vehicle_assignments` | Junction/history table connecting drivers and vehicles |
| `trips` | Stores ride requests and completed/cancelled trips |
| `payments` | Stores payment information for trips |
| `ratings` | Stores rider ratings for completed trips |

The design uses primary keys on all tables and foreign keys for relational integrity.

The junction table `driver_vehicle_assignments` uses a composite primary key:

```text
(driver_id, vehicle_id, assigned_from)
```

This allows a driver/vehicle relationship to be represented over time without requiring a single permanent assignment.

## Normalization

The database separates independent entities into their own tables. For example, vehicle category pricing is stored in `vehicle_types` rather than repeatedly stored in every vehicle or trip record.

Rider, driver, vehicle, payment and rating information is also separated to reduce duplication and improve data integrity.

The design is intended to satisfy normal relational-design principles and avoid unnecessary repeating groups and duplicated descriptive data.

## Entity Relationship Diagram

The project includes:

```text
docs/erd.png
```

The diagram represents the final schema and its relationships.

## Repository Structure

```text
aerocruz-ride-hailing/
│
├── README.md
│
├── ddl/
│   └── 01_schema.sql
│
├── dml/
│   └── 01_seed_data.sql
│
├── dql/
│   └── 01_queries.sql
│
└── docs/
    └── erd.png
```

### `ddl/`

Contains the database schema and constraints.

### `dml/`

Contains realistic sample data.

### `dql/`

Contains business questions, analytical queries and two management views.

### `docs/`

Contains the Entity Relationship Diagram.

## Technologies

- MySQL 8.0+
- SQL
- Git
- GitHub

## How to Run

### 1. Run the DDL

Open MySQL Workbench or another MySQL client and run:

```sql
SOURCE path/to/ddl/01_schema.sql;
```

Alternatively, open `ddl/01_schema.sql` and execute it.

The script creates and selects:

```text
aerocruz_db
```

### 2. Run the DML

After the schema has been created, execute:

```text
dml/01_seed_data.sql
```

This populates the database with realistic riders, drivers, vehicles, assignments, trips, payments and ratings.

### 3. Run the DQL

Finally execute:

```text
dql/01_queries.sql
```

This runs the business queries and creates the two management views.

## DDL Coverage

The schema demonstrates:

- PRIMARY KEY
- FOREIGN KEY
- AUTO_INCREMENT
- Composite PRIMARY KEY
- NOT NULL
- UNIQUE
- CHECK
- DEFAULT
- ENUM
- Referential integrity
- Many-to-many relationship
- Normalized relational structure

## DML Coverage

The seed data includes realistic records for:

- 15 riders
- 15 drivers
- 4 vehicle types
- 20 vehicles
- 20 driver/vehicle assignments
- 30 trips
- 30 payments
- 27 ratings

Lookup data such as vehicle types contains fewer than 15 records because the assignment explicitly allows genuinely small lookup tables to be smaller.

## DQL Coverage

The DQL script contains more than the required 10 queries and demonstrates:

- COUNT
- SUM
- AVG
- MIN/MAX
- GROUP BY
- ORDER BY
- Multi-column ORDER BY
- HAVING
- Scalar subquery
- EXISTS
- Correlated subquery
- JOIN-based analysis
- Two useful views

Each query is preceded by a comment describing the real AeroCruz business question it answers.

## Management Views

### `vw_driver_performance`

Provides:

- Driver name
- Completed trips
- Total revenue
- Average fare
- Customer rating

This can help AeroCruz management compare driver performance.

### `vw_rider_spending`

Provides:

- Rider name
- Completed trips
- Total spending
- Average trip fare

This can help management understand rider activity and spending.

## GitHub Commit Plan

The assignment requires meaningful staggered commits and genuine contributions from group members.

Do not fabricate commit authors or timestamps.

A legitimate sequence is:

### Phase 1 — DDL

```text
ddl: create AeroCruz database schema
```

### Phase 2 — DML

```text
dml: add AeroCruz seed data
```

### Phase 3 — DQL

Possible genuine commits include:

```text
dql: add aggregate trip analysis
dql: add driver and rider performance queries
dql: add AeroCruz management views
```

Each group member should commit using their own GitHub account as required by the assignment.

## Contributors

Add the actual group members here before submission.

```text
1. ______________________________
2. ______________________________
3. ______________________________
4. ______________________________
5. ______________________________
6. ______________________________
```

## Submission Checklist

Before submission, confirm:

- [ ] Repository has the required folder structure
- [ ] All group members have made genuine commits
- [ ] DDL executes successfully on a fresh MySQL database
- [ ] DML executes successfully after DDL
- [ ] DQL queries execute successfully
- [ ] Both views are created successfully
- [ ] ERD matches the final schema
- [ ] README is complete
- [ ] Repository is public or the lecturer has been added as a collaborator
- [ ] Group member names are included in the submission comment
- [ ] Repository URL is submitted through the class submission link

## Academic Integrity

This is an original AeroCruz database design created for the group project. The schema, sample data and queries should not be copied from another group's project.

The final GitHub history should reflect genuine work performed by the actual group members.
