INSERT INTO PatientPasswords 

VALUES ('OP001', SHA2('MyPassword123', 256)); 

-- To check a password in this simple demonstration: 

SELECT PatientID 

FROM PatientPasswords 

WHERE PatientID = 'OP001' 

AND PasswordHash = SHA2('MyPassword123', 256); 