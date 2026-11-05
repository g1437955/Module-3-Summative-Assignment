-- Create a temporary test patient
INSERT INTO Patient (PatientID, PatientName, Postcode)
VALUES ('OP999', 'Temporary Test Patient', 'ZZ99ZZ');
 
-- Confirm that no appointments reference this patient
SELECT * FROM Patient
WHERE PatientID = 'OP999';