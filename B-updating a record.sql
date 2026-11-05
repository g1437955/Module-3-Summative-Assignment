-- Update a specific data
UPDATE Appointment
SET Notes = 'Updated notes - review cataract assessment'
WHERE AppointmentID = 'A006';
 
-- Verify the update
SELECT AppointmentID, PatientID, Notes
FROM Appointment
WHERE AppointmentID = 'A006';