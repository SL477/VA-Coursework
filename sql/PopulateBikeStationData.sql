-- Populate bike_station table

INSERT INTO bikeStation 
SELECT DISTINCT from_station_id, from_station_name FROM bikedata;


-- Remove From bike_data
ALTER TABLE bikedata
DROP COLUMN to_station_name, from_station_name;