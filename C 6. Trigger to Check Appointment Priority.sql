USE EyeClinicDB;
 
DROP TRIGGER IF EXISTS CheckAppointmentDate;
 
DELIMITER //
 
CREATE TRIGGER CheckAppointmentDate
BEFORE INSERT ON Appointment
FOR EACH ROW
BEGIN
    IF TIMESTAMP(NEW.AppointmentDate, NEW.AppointmentTime)
< CURRENT_TIMESTAMP THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Appointment cannot be in the past';
    END IF;
END //
 
DELIMITER ;