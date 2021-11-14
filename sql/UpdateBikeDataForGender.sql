-- Add in the gender integer column
ALTER TABLE bikedata
ADD gender_id INT;

-- Populate the gender integer column
UPDATE bikedata 
SET gender_id = 1
WHERE gender = 'Male';

UPDATE bikedata 
SET gender_id = 2
WHERE gender = 'Female';

-- Remove the gender integer column
ALTER TABLE bikedata 
DROP COLUMN gender
