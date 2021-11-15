
SELECT CAST(b.starttime AS DATE) StartDay, COUNT(*) AS trips INTO tripsPerDay FROM bikedata b
GROUP BY CAST(b.starttime AS DATE)