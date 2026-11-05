DELIMITER // 

 

CREATE PROCEDURE GetPatientAppointments( 

    IN p_PatientID VARCHAR(10) 

) 

BEGIN 

    SELECT * 

    FROM APPOINTMENT 

    WHERE PatientID = p_PatientID; 

END // 

 

DELIMITER ; 