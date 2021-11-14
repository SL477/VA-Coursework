-- Populate userType
INSERT INTO userType
SELECT DISTINCT usertype FROM bikedata;

-- Update bikeData
ALTER TABLE bikeData
ADD userType_id INT;

-- Update the bikeData table with the types
DECLARE @i INT = (SELECT userType_id FROM userType WHERE description = 'Customer');
UPDATE bikeData
SET userType_id = @i
WHERE userType = 'Customer'

DECLARE @i2 INT = (SELECT userType_id FROM userType WHERE description = 'Dependent');
UPDATE bikeData
SET userType_id = @i2
WHERE userType = 'Dependent'

DECLARE @i3 INT = (SELECT userType_id FROM userType WHERE description = 'Subscriber');
UPDATE bikeData
SET userType_id = @i3
WHERE userType = 'Subscriber';

-- Drop the extra column
ALTER TABLE bikeData
DROP COLUMN userType;