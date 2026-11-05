CREATE DATABASE IF NOT EXISTS EyeClinicDB; 

USE EyeClinicDB; 

 

-- ========================================================= 

-- 1. PATIENT 

-- Stores patient details 

-- ========================================================= 

 

CREATE TABLE Patient ( 

    PatientID VARCHAR(10) PRIMARY KEY, 

    PatientName VARCHAR(100) NOT NULL, 

    Postcode VARCHAR(10) NOT NULL 

); 

 

-- ========================================================= 

-- 2. SPECIALTY 

-- Stores clinician specialties 

-- ========================================================= 

 

CREATE TABLE Specialty ( 

    SpecialtyID VARCHAR(10) PRIMARY KEY, 

    SpecialtyName VARCHAR(100) NOT NULL UNIQUE 

) ; 

 

 

 

-- ========================================================= 

-- 3. CLINICIAN 

-- Each clinician has one primary specialty 

-- ========================================================= 

 

CREATE TABLE Clinician ( 

    ClinicianID VARCHAR(10) PRIMARY KEY, 

    ClinicianName VARCHAR(100) NOT NULL, 

    SpecialtyID VARCHAR(10) NOT NULL, 

 

    CONSTRAINT fk_clinician_specialty 

        FOREIGN KEY (SpecialtyID) 

        REFERENCES Specialty (SpecialtyID) 

        ON UPDATE CASCADE 

        ON DELETE RESTRICT 

) ; 

 

-- ========================================================= 

-- 4. CLINIC 

-- Stores clinic locations 

-- ========================================================= 

 

CREATE TABLE Clinic ( 

    ClinicID VARCHAR(10) PRIMARY KEY, 

    ClinicName VARCHAR(100) NOT NULL UNIQUE 

) ; 

 

-- ========================================================= 

-- 5. APPOINTMENT 

-- Each appointment belongs to one patient, clinician 

-- and clinic 

-- ========================================================= 

 

CREATE TABLE Appointment ( 

    AppointmentID VARCHAR(10) PRIMARY KEY, 

    PatientID VARCHAR(10) NOT NULL, 

    ClinicianID VARCHAR(10) NOT NULL, 

    ClinicID VARCHAR(10) NOT NULL, 

    AppointmentDate DATE NOT NULL, 

    AppointmentTime TIME NOT NULL, 

    Notes VARCHAR(500), 

 

    CONSTRAINT fk_appointment_patient 

        FOREIGN KEY (PatientID) 

        REFERENCES Patient (PatientID) 

        ON UPDATE CASCADE 

        ON DELETE RESTRICT, 

 

    CONSTRAINT fk_appointment_clinician 

        FOREIGN KEY (ClinicianID) 

        REFERENCES Clinician (ClinicianID) 

        ON UPDATE CASCADE 

        ON DELETE RESTRICT, 

 

    CONSTRAINT fk_appointment_clinic 

        FOREIGN KEY (ClinicID) 

        REFERENCES Clinic (ClinicID) 

        ON UPDATE CASCADE 

        ON DELETE RESTRICT 

) ; 

 

-- ========================================================= 

-- 6. DIAGNOSIS 

-- Stores diagnosis descriptions 

-- ========================================================= 

 

CREATE TABLE Diagnosis ( 

    DiagnosisID VARCHAR(10) PRIMARY KEY, 

    DiagnosisName VARCHAR(150) NOT NULL UNIQUE 

) ; 

 

-- ========================================================= 

-- 7. APPOINTMENT DIAGNOSIS 

-- Junction table for the many-to-many relationship 

-- between appointments and diagnoses 

-- ========================================================= 

 

CREATE TABLE AppointmentDiagnosis ( 

    AppointmentID VARCHAR(10) NOT NULL, 

    DiagnosisID VARCHAR(10) NOT NULL, 

 

    PRIMARY KEY (AppointmentID, DiagnosisID), 

 

    CONSTRAINT fk_apptdiagnosis_appointment 

        FOREIGN KEY (AppointmentID) 

        REFERENCES Appointment (AppointmentID) 

        ON UPDATE CASCADE 

        ON DELETE RESTRICT, 

 

    CONSTRAINT fk_apptdiagnosis_diagnosis 

        FOREIGN KEY (DiagnosisID) 

        REFERENCES Diagnosis (DiagnosisID) 

        ON UPDATE CASCADE 

        ON DELETE RESTRICT 

) ; 

 

-- ========================================================= 

-- 8. PRESCRIPTION 

-- A prescription is associated with an appointment 

-- ========================================================= 

 

CREATE TABLE Prescription ( 

    PrescriptionID VARCHAR(10) PRIMARY KEY, 

    AppointmentID VARCHAR(10) NOT NULL, 

 

    CONSTRAINT fk_prescription_appointment 

        FOREIGN KEY (AppointmentID) 

        REFERENCES Appointment (AppointmentID) 

        ON UPDATE CASCADE 

        ON DELETE RESTRICT 

) ; 

 

-- ========================================================= 

-- 9. MEDICINE 

-- Stores each distinct medicine once 

-- ========================================================= 

 

CREATE TABLE Medicine ( 

    MedicineID VARCHAR(10) PRIMARY KEY, 

    MedicineName VARCHAR(150) NOT NULL UNIQUE 

) ; 

 

-- ========================================================= 

-- 10. PRESCRIPTION ITEM 

-- Links prescriptions to medicines and stores instructions 

-- Missing clinical instructions remain NULL until verified 

-- ========================================================= 

 

CREATE TABLE PrescriptionItem ( 

    PrescriptionItemID VARCHAR(10) PRIMARY KEY, 

    PrescriptionID VARCHAR(10) NOT NULL, 

    MedicineID VARCHAR(10) NOT NULL, 

    Dose VARCHAR(100) DEFAULT NULL, 

    Route VARCHAR(100) DEFAULT NULL, 

    Frequency VARCHAR(100) DEFAULT NULL, 

    Duration VARCHAR(100) DEFAULT NULL, 

 

    CONSTRAINT fk_item_prescription 

        FOREIGN KEY (PrescriptionID) 

        REFERENCES Prescription (PrescriptionID) 

        ON UPDATE CASCADE 

        ON DELETE RESTRICT, 

 

    CONSTRAINT fk_item_medicine 

        FOREIGN KEY (MedicineID) 

        REFERENCES Medicine (MedicineID) 

        ON UPDATE CASCADE 

        ON DELETE RESTRICT, 

 

    CONSTRAINT uq_prescription_medicine 

        UNIQUE (PrescriptionID, MedicineID) 

) ; 

 

-- ========================================================= 

-- 11. FOLLOW-UP PLAN 

-- Assumption: each appointment can have at most one 

-- follow-up plan in this version of the design 

-- ========================================================= 

 

CREATE TABLE FollowUpPlan ( 

    FollowUpID VARCHAR(10) PRIMARY KEY, 

    AppointmentID VARCHAR(10) NOT NULL UNIQUE, 

    FollowUpInterval VARCHAR(50) NOT NULL, 

    DueDate DATE DEFAULT NULL, 

    Priority VARCHAR(20) NOT NULL DEFAULT 'Routine', 

    Status VARCHAR(20) DEFAULT NULL, 

 

    CONSTRAINT chk_followup_priority 

        CHECK (Priority IN ('Routine', 'High', 'Urgent')), 

 

    CONSTRAINT chk_followup_status 

        CHECK ( 

            Status IS NULL OR 

            Status IN ( 

                'Planned', 

                'Scheduled', 

                'Completed', 

                'Cancelled', 

                'Overdue' 

            ) 

        ), 

 

    CONSTRAINT fk_followup_appointment 

        FOREIGN KEY (AppointmentID) 

        REFERENCES Appointment (AppointmentID) 

        ON UPDATE CASCADE 

        ON DELETE RESTRICT 

) ; 

 

-- ========================================================= 

-- VERIFY TABLE CREATION 

-- ========================================================= 

 

SHOW TABLES; 

 

-- To inspect the structure of an individual table: 

DESCRIBE Patient; 

DESCRIBE Clinician; 

DESCRIBE Appointment; 

DESCRIBE PrescriptionItem; 

DESCRIBE FollowUpPlan; 

 