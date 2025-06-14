SELECT 
    -- identification
    pq.sensor_type, pq.vehicle_id,
    -- registration data
    rs.model, rs.manufacturer, rs.year, rs.driver_name,
    -- sensor data
    pq.speed, pq.fuel_level, pq.gps_location, pq.timestamp

FROM
     "awsdatacatalog"."iot_parquet"."iot_parquet" pq
     
INNER JOIN  "globalsolutions_database"."public"."vehicle_info" rs on rs.vehicle_id = pq.vehicle_id;