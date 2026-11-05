USE EyeClinicDB; 

 

INSERT INTO Specialty (SpecialtyID, SpecialtyName) VALUES 

('S01', 'Glaucoma'), 

('S02', 'Retina'), 

('S03', 'Cornea'), 

('S04', 'Cataract'), 

('S05', 'Paediatric Ophthalmology'), 

('S06', 'Oculoplastics'), 

('S07', 'Neuro-Ophthalmology'), 

('S08', 'Uveitis'), 

('S09', 'Medical Retina'), 

('S10', 'Ocular Oncology'), 

('S11', 'Refractive Surgery'), 

('S12', 'Emergency Ophthalmology'), 

('S13', 'Low Vision'); 

 

-- ============================================================ 

-- 2. PATIENT 

-- 4 original patients + 10 synthetic patients 

-- ============================================================ 

 

INSERT INTO Patient (PatientID, PatientName, Postcode) VALUES 

('OP001', 'Amina Yusuf', 'NE14AB'), 

('OP002', 'Daniel Reed', 'N167QP'), 

('OP003', 'Sofia Bennett', 'E82LD'), 

('OP004', 'Michael Okoro', 'SE63RT'), 

('OP005', 'Emily Carter', 'M12AB'), 

('OP006', 'Oliver Wilson', 'B15CD'), 

('OP007', 'Isabella Brown', 'L18EF'), 

('OP008', 'Noah Taylor', 'LS29GH'), 

('OP009', 'Amelia Davies', 'BS16JK'), 

('OP010', 'George Evans', 'CF103LM'), 

('OP011', 'Mia Thomas', 'OX44NP'), 

('OP012', 'Jack Roberts', 'SW119QR'), 

('OP013', 'Grace Walker', 'EH12ST'), 

('OP014', 'Harry White', 'G31UV'); 

 

-- ============================================================ 

-- 3. CLINICIAN 

-- 3 original clinicians + 10 synthetic clinicians 

-- ============================================================ 

 

INSERT INTO Clinician 

    (ClinicianID, ClinicianName, SpecialtyID) 

VALUES 

('C01', 'Dr Maya Shah', 'S01'), 

('C02', 'Dr Leo Grant', 'S02'), 

('C03', 'Dr Priya Nair', 'S03'), 

('C04', 'Dr Emma Collins', 'S04'), 

('C05', 'Dr James Turner', 'S05'), 

('C06', 'Dr Olivia Martin', 'S06'), 

('C07', 'Dr William Clark', 'S07'), 

('C08', 'Dr Ava Lewis', 'S08'), 

('C09', 'Dr Ethan Hall', 'S09'), 

('C10', 'Dr Charlotte Young', 'S10'), 

('C11', 'Dr Benjamin King', 'S11'), 

('C12', 'Dr Amelia Scott', 'S12'), 

('C13', 'Dr Lucas Green', 'S13'); 

 

-- ============================================================ 

-- 4. CLINIC 

-- 3 original clinics + 10 synthetic clinics 

-- ============================================================ 

 

INSERT INTO Clinic (ClinicID, ClinicName) VALUES 

('CL01', 'City Road'), 

('CL02', 'Bedford'), 

('CL03', 'Croydon'), 

('CL04', 'Northside Eye Clinic'), 

('CL05', 'Riverside Eye Centre'), 

('CL06', 'Westgate Ophthalmology'), 

('CL07', 'Central Vision Clinic'), 

('CL08', 'Meadow Eye Centre'), 

('CL09', 'Harbour Eye Clinic'), 

('CL10', 'Parkside Ophthalmology'), 

('CL11', 'Greenfield Eye Centre'), 

('CL12', 'Lakeside Vision Clinic'), 

('CL13', 'Hilltop Eye Centre'); 

 

-- ============================================================ 

-- 5. DIAGNOSIS 

-- 4 original diagnoses + 10 synthetic diagnoses 

-- ============================================================ 

 

INSERT INTO Diagnosis (DiagnosisID, DiagnosisName) VALUES 

('D01', 'Ocular hypertension'), 

('D02', 'Diabetic macular oedema'), 

('D03', 'Glaucoma suspect'), 

('D04', 'Keratoconus'), 

('D05', 'Age-related cataract'), 

('D06', 'Dry eye disease'), 

('D07', 'Retinal detachment'), 

('D08', 'Conjunctivitis'), 

('D09', 'Blepharitis'), 

('D10', 'Uveitis'), 

('D11', 'Macular degeneration'), 

('D12', 'Refractive error'), 

('D13', 'Corneal abrasion'), 

('D14', 'Optic neuritis'); 

 

-- ============================================================ 

-- 6. MEDICINE 

-- 4 original medicines + 10 synthetic medicines 

-- ============================================================ 

 

INSERT INTO Medicine (MedicineID, MedicineName) VALUES 

('M01', 'Latanoprost'), 

('M02', 'Timolol'), 

('M03', 'Aflibercept'), 

('M04', 'Sodium chloride drops'), 

('M05', 'Artificial tears'), 

('M06', 'Lubricating eye ointment'), 

('M07', 'Cyclopentolate'), 

('M08', 'Prednisolone eye drops'), 

('M09', 'Moxifloxacin eye drops'), 

('M10', 'Ketorolac eye drops'), 

('M11', 'Brimonidine'), 

('M12', 'Dorzolamide'), 

('M13', 'Olopatadine eye drops'), 

('M14', 'Carboxymethylcellulose drops'); 

 

-- ============================================================ 

-- 7. APPOINTMENT 

-- 5 original appointments + 10 synthetic appointments 

-- ============================================================ 

 

INSERT INTO Appointment 

    (AppointmentID, PatientID, ClinicianID, ClinicID, 

     AppointmentDate, AppointmentTime, Notes) 

VALUES 

-- Original Appendix 1 records 

('A001', 'OP001', 'C01', 'CL01', 

 '2026-10-05', '09:00:00', 'Review IOP'), 

 

('A002', 'OP002', 'C02', 'CL01', 

 '2026-10-05', '09:30:00', 'OCT before review'), 

 

('A003', 'OP001', 'C01', 'CL02', 

 '2026-11-16', '10:15:00', 'Visual field test'), 

 

('A004', 'OP003', 'C01', 'CL01', 

 '2026-10-06', '11:00:00', 'Monitor'), 

 

('A005', 'OP004', 'C03', 'CL03', 

 '2026-10-07', '14:00:00', 'Corneal topography'), 

 

-- 10 additional synthetic appointments 

('A006', 'OP005', 'C04', 'CL04', 

 '2026-11-02', '09:00:00', 'Cataract assessment'), 

 

('A007', 'OP006', 'C05', 'CL05', 

 '2026-11-03', '09:30:00', 'Paediatric eye review'), 

 

('A008', 'OP007', 'C06', 'CL06', 

 '2026-11-04', '10:00:00', 'Oculoplastics consultation'), 

 

('A009', 'OP008', 'C07', 'CL07', 

 '2026-11-05', '10:30:00', 'Visual assessment'), 

 

('A010', 'OP009', 'C08', 'CL08', 

 '2026-11-06', '11:00:00', 'Inflammation review'), 

 

('A011', 'OP010', 'C09', 'CL09', 

 '2026-11-09', '11:30:00', 'Retinal assessment'), 

 

('A012', 'OP011', 'C10', 'CL10', 

 '2026-11-10', '13:00:00', 'Ocular oncology consultation'), 

 

('A013', 'OP012', 'C11', 'CL11', 

 '2026-11-11', '13:30:00', 'Refractive assessment'), 

 

('A014', 'OP013', 'C12', 'CL12', 

 '2026-11-12', '14:00:00', 'Urgent eye assessment'), 

 

('A015', 'OP014', 'C13', 'CL13', 

 '2026-11-13', '14:30:00', 'Low vision assessment'); 

 

-- ============================================================ 

-- 8. APPOINTMENT DIAGNOSIS 

-- 5 original links + 10 synthetic links 

-- ============================================================ 

 

INSERT INTO AppointmentDiagnosis (AppointmentID, DiagnosisID) VALUES 

('A001', 'D01'), 

('A002', 'D02'), 

('A003', 'D01'), 

('A004', 'D03'), 

('A005', 'D04'), 

('A006', 'D05'), 

('A007', 'D06'), 

('A008', 'D09'), 

('A009', 'D14'), 

('A010', 'D10'), 

('A011', 'D11'), 

('A012', 'D08'), 

('A013', 'D12'), 

('A014', 'D13'), 

('A015', 'D06'); 

 

-- ============================================================ 

-- 9. PRESCRIPTION 

-- 4 original prescription records + 10 synthetic records 

-- A004 is excluded because its source medicine value is None. 

-- ============================================================ 

 

INSERT INTO Prescription (PrescriptionID, AppointmentID) VALUES 

('PR001', 'A001'), 

('PR002', 'A002'), 

('PR003', 'A003'), 

('PR004', 'A005'), 

('PR005', 'A006'), 

('PR006', 'A007'), 

('PR007', 'A008'), 

('PR008', 'A009'), 

('PR009', 'A010'), 

('PR010', 'A011'), 

('PR011', 'A012'), 

('PR012', 'A013'), 

('PR013', 'A014'), 

('PR014', 'A015'); 

 

-- ============================================================ 

-- 10. PRESCRIPTION ITEM 

-- 5 original medicine entries + 10 synthetic entries 

-- Clinical instructions are NULL where not supplied. 

-- ============================================================ 

 

INSERT INTO PrescriptionItem 

    (PrescriptionItemID, PrescriptionID, MedicineID, 

     Dose, Route, Frequency, Duration) 

VALUES 

-- Original data 

('PI001', 'PR001', 'M01', NULL, NULL, NULL, NULL), 

('PI002', 'PR001', 'M02', NULL, NULL, NULL, NULL), 

('PI003', 'PR002', 'M03', NULL, NULL, NULL, NULL), 

('PI004', 'PR003', 'M01', NULL, NULL, NULL, NULL), 

('PI005', 'PR004', 'M04', NULL, NULL, NULL, NULL), 

 

-- Additional synthetic test data 

('PI006', 'PR005', 'M05', 

 '1 drop', 'Ophthalmic', 'As prescribed', '7 days'), 

 

('PI007', 'PR006', 'M06', 

 'Small amount', 'Ophthalmic', 'At bedtime', '14 days'), 

 

('PI008', 'PR007', 'M07', 

 '1 drop', 'Ophthalmic', 'As prescribed', '3 days'), 

 

('PI009', 'PR008', 'M08', 

 '1 drop', 'Ophthalmic', 'As prescribed', '7 days'), 

 

('PI010', 'PR009', 'M09', 

 '1 drop', 'Ophthalmic', 'As prescribed', '5 days'), 

 

('PI011', 'PR010', 'M10', 

 '1 drop', 'Ophthalmic', 'As prescribed', '5 days'), 

 

('PI012', 'PR011', 'M11', 

 '1 drop', 'Ophthalmic', 'As prescribed', '14 days'), 

 

('PI013', 'PR012', 'M12', 

 '1 drop', 'Ophthalmic', 'As prescribed', '14 days'), 

 

('PI014', 'PR013', 'M13', 

 '1 drop', 'Ophthalmic', 'As prescribed', '7 days'), 

 

('PI015', 'PR014', 'M14', 

 '1 drop', 'Ophthalmic', 'As prescribed', '14 days'); 

 

-- ============================================================ 

-- 11. FOLLOW-UP PLAN 

-- 5 original plans + 10 synthetic plans 

-- Original due dates and statuses are not supplied. 

-- ============================================================ 

 

INSERT INTO FollowUpPlan 

    (FollowUpID, AppointmentID, FollowUpInterval, 

     DueDate, Priority, Status) 

VALUES 

-- Original Appendix 1 data 

('F001', 'A001', '6 weeks', NULL, 'High', NULL), 

('F002', 'A002', '4 weeks', NULL, 'Urgent', NULL), 

('F003', 'A003', '12 weeks', NULL, 'Routine', NULL), 

('F004', 'A004', '26 weeks', NULL, 'Routine', NULL), 

('F005', 'A005', '8 weeks', NULL, 'Routine', NULL), 

 

-- Additional synthetic records 

('F006', 'A006', '6 weeks', '2026-12-14', 'Routine', 'Planned'), 

('F007', 'A007', '4 weeks', '2026-12-01', 'Routine', 'Scheduled'), 

('F008', 'A008', '8 weeks', '2026-12-30', 'Routine', 'Planned'), 

('F009', 'A009', '2 weeks', '2026-11-19', 'High', 'Scheduled'), 

('F010', 'A010', '3 weeks', '2026-11-27', 'Urgent', 'Planned'), 

('F011', 'A011', '6 weeks', '2026-12-21', 'Routine', 'Scheduled'), 

('F012', 'A012', '4 weeks', '2026-12-08', 'High', 'Planned'), 

('F013', 'A013', '8 weeks', '2027-01-06', 'Routine', 'Scheduled'), 

('F014', 'A014', '1 week', '2026-11-19', 'Urgent', 'Planned'), 

('F015', 'A015', '12 weeks', '2027-02-05', 'Routine', 'Scheduled'); 

 

-- Commit all inserted records 

COMMIT; 

 

-- ============================================================ 

-- VERIFY THE INSERTED DATA 

-- ============================================================ 

 

SELECT 'Patient' AS TableName, COUNT(*) AS TotalRecords 

FROM Patient 

UNION ALL 

SELECT 'Specialty', COUNT(*) FROM Specialty 

UNION ALL 

SELECT 'Clinician', COUNT(*) FROM Clinician 

UNION ALL 

SELECT 'Clinic', COUNT(*) FROM Clinic 

UNION ALL 

SELECT 'Diagnosis', COUNT(*) FROM Diagnosis 

UNION ALL 

SELECT 'Medicine', COUNT(*) FROM Medicine 

UNION ALL 

SELECT 'Appointment', COUNT(*) FROM Appointment 

UNION ALL 

SELECT 'AppointmentDiagnosis', COUNT(*) FROM AppointmentDiagnosis 

UNION ALL 

SELECT 'Prescription', COUNT(*) FROM Prescription 

UNION ALL 

SELECT 'PrescriptionItem', COUNT(*) FROM PrescriptionItem 

UNION ALL 

SELECT 'FollowUpPlan', COUNT(*) FROM FollowUpPlan; 