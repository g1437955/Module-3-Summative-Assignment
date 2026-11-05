CREATE ROLE IF NOT EXISTS 'ClinicAdmin'; 

CREATE ROLE IF NOT EXISTS 'EyeDoctor'; 

CREATE ROLE IF NOT EXISTS 'Receptionist'; 

CREATE ROLE IF NOT EXISTS 'PatientUser'; 

-- Administrator: 

GRANT SELECT, INSERT, UPDATE, DELETE 

ON EyeClinicDB.* 

TO 'ClinicAdmin'; 

-- Doctor: 

GRANT SELECT, INSERT, UPDATE 

ON EyeClinicDB.APPOINTMENT 

TO 'EyeDoctor'; 

 

GRANT SELECT 

ON EyeClinicDB.PATIENT 

TO 'EyeDoctor'; 

-- Receptionist: 

GRANT SELECT, INSERT, UPDATE 

ON EyeClinicDB.PATIENT 

TO 'Receptionist'; 

 

GRANT SELECT, INSERT, UPDATE 

ON EyeClinicDB.APPOINTMENT 

TO 'Receptionist'; 

-- Patient: 

GRANT SELECT 

ON EyeClinicDB.CLINIC 

TO 'PatientUser'; 

 

GRANT SELECT 

ON EyeClinicDB.CLINICIAN 

TO 'PatientUser'; 