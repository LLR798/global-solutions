CREATE DATABASE globalsolutions_database;

CREATE TABLE warehouse_info (
    warehouse_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(255),
    manager_name VARCHAR(100),
    capacity INT
);

CREATE TABLE vehicle_info (
    vehicle_id VARCHAR(10) PRIMARY KEY,
    model VARCHAR(100),
    manufacturer VARCHAR(100),
    year INT,
    driver_name VARCHAR(100)
);

INSERT INTO warehouse_info (warehouse_id, name, location, manager_name, capacity) VALUES
('WH-1', 'NY A1C', 'New York, NY', 'John Doe', 1000),
('WH-2', 'CA B1D', 'Los Angeles, CA', 'Jane Smith', 1500),
('WH-3', 'IL C13', 'Chicago, IL', 'Robert Johnson', 1200),
('WH-4', 'TX DFF', 'Houston, TX', 'Michael Williams', 900);

INSERT INTO vehicle_info (vehicle_id, model, manufacturer, year, driver_name) VALUES
('VH-1', 'Model X', 'Tesla', 2022, 'Alex Green'),
('VH-2', 'F-150', 'Ford', 2020, 'Chris White'),
('VH-3', 'Civic', 'Honda', 2019, 'Taylor Black'),
('VH-4', 'Silverado', 'Chevrolet', 2021, 'Jordan Gray');
