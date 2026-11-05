-- Delete the temporary patient
DELETE FROM Patient
WHERE PatientID = 'OP999'
  AND PatientName = 'Temporary Test Patient';
 
-- Verify that the patient has been deleted
SELECT * FROM Patient
WHERE PatientID = 'OP999';