SELECT
    -- identification
    pq.sensor_type, pq.warehouse_id,
    -- registration data
    rs.name, rs.location, rs.manager_name, rs.capacity,
    -- sensor data
    pq.humidity, pq.temperature, pq.timestamp

FROM "awsdatacatalog"."iot_parquet"."iot_parquet" pq

INNER JOIN  "globalsolutions_database"."public"."warehouse_info" rs on rs.warehouse_id = pq.warehouse_id;