SELECT 

    A.AppointmentID, 

    P.PatientName, 

    C.ClinicianName, 

    L.ClinicName, 

    A.AppointmentDate 

FROM APPOINTMENT A 

INNER JOIN PATIENT P 

    ON A.PatientID = P.PatientID 

INNER JOIN CLINICIAN C 

    ON A.ClinicianID = C.ClinicianID 

INNER JOIN CLINIC L 

    ON A.ClinicID = L.ClinicID;