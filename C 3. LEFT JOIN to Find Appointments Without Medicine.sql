USE EyeClinicDB;
 
SELECT
    a.AppointmentID,
    p.PatientName,
    a.PatientID,
    a.AppointmentDate,
    a.AppointmentTime
FROM Appointment AS a
INNER JOIN Patient AS p
    ON a.PatientID = p.PatientID
LEFT JOIN Prescription AS pr
    ON a.AppointmentID = pr.AppointmentID
WHERE pr.PrescriptionID IS NULL;