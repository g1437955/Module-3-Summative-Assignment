SELECT PatientID, COUNT(*) AS TotalAppointments 

FROM APPOINTMENT 

GROUP BY PatientID 

HAVING COUNT(*) > ( 

    SELECT AVG(AppointmentCount) 

    FROM ( 

        SELECT COUNT(*) AS AppointmentCount 

        FROM APPOINTMENT 

        GROUP BY PatientID 

    ) AS PatientCounts 

); 