
DELIMITER //
CREATE PROCEDURE CheckBooking(IN BookingDate DATE, IN TableNumber INT)
BEGIN
  DECLARE bookingCount INT;
  -- CHECK BOOKED TABLE ON THE SPECIFIC DATE
  SELECT COUNT(*) INTO bookingCount
  FROM Bookings
  WHERE Date = BookingDate AND TableNumber = TableNumber;
  -- message 
  
  IF bookingCount > 0 THEN
     SELECT CONCAT('Table ',TableNumber, 'is already booked on ', BookingDate) AS BookingStatus;
  ELSE
     SELECT CONCAT('Table ',TableNumber, 'is Avialable on ', BookingDate) AS BookingStatus;
END IF;
  
END //

DELIMITER ;



