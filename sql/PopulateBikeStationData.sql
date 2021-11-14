-- Populate bike_station table
/*
INSERT INTO bikeStation 
SELECT DISTINCT from_station_name FROM bikedata;
*/

-- Alter bikeData table
--ALTER TABLE bikeData
--ADD to_bikeStationCustom_id INT
--,from_bikeStationCustom_id INT

DECLARE @id INT;
DECLARE @desc NVARCHAR(36);

DECLARE cur CURSOR FOR SELECT station_id, description FROM bikeStation

OPEN cur
FETCH NEXT FROM cur INTO @id, @desc

WHILE @@FETCH_STATUS = 0  
BEGIN
	UPDATE bikedata 
	SET to_bikeStationCustom_id = @id
	WHERE to_station_name = @desc

	UPDATE bikedata 
	SET from_bikeStationCustom_id = @id
	WHERE from_station_name = @desc

	PRINT @id
	FETCH NEXT FROM cur INTO @id, @desc
END
CLOSE cur
DEALLOCATE cur;


---- Remove From bike_data
--ALTER TABLE bikedata
--DROP COLUMN to_station_name, from_station_name;