SELECT ClinicianID, COUNT(*) AS TotalAppointments 

FROM APPOINTMENT 

GROUP BY ClinicianID 

HAVING COUNT(*) > 1; 