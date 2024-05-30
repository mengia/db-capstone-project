DELIMITER //

CREATE PROCEDURE CancelBooking(IN p_bookingID INT)
BEGIN
DELETE FROM Bookings WHERE BookingID = p_bookingID;
SELECT CONCAT('Booking ', p_bookingID, ' is cancelled') AS Confirmation;
END //
DELIMITER ;



