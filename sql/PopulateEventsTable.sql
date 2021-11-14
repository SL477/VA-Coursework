-- Populate events table
INSERT INTO events
SELECT DISTINCT events FROM bikedata 


-- Amend bikedata table
ALTER TABLE bikedata
ADD event_id INT;


-- Update bikedata table
DECLARE @e1 INT = (SELECT event_id FROM events WHERE description = 'clear');
UPDATE bikedata
SET event_id = @e1
WHERE events = 'clear';

DECLARE @e2 INT = (SELECT event_id FROM events WHERE description = 'cloudy');
UPDATE bikedata
SET event_id = @e2
WHERE events = 'cloudy';

DECLARE @e3 INT = (SELECT event_id FROM events WHERE description = 'not clear');
UPDATE bikedata
SET event_id = @e3
WHERE events = 'not clear';

DECLARE @e4 INT = (SELECT event_id FROM events WHERE description = 'rain or snow');
UPDATE bikedata
SET event_id = @e4
WHERE events = 'rain or snow';

DECLARE @e5 INT = (SELECT event_id FROM events WHERE description = 'tstorms');
UPDATE bikedata
SET event_id = @e5
WHERE events = 'tstorms';

DECLARE @e6 INT = (SELECT event_id FROM events WHERE description = 'unknown');
UPDATE bikedata
SET event_id = @e6
WHERE events = 'unknown';


-- Drop the events column
ALTER TABLE bikedata
DROP COLUMN events;