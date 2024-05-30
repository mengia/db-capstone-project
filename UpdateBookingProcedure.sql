DELIMITER //
create procedure UpdateBooking(IN p_BookingID INT,
    IN p_BookingDate DATE)
    BEGIN
    Update Bookings
    SET Date = p_BookingDate
    where  BookingID = p_BookingID;
    SELECT CONCAT('Booking ', p_BookingID, ' updated') AS Confirmation;
    
    END //
    
    DELIMITER ;
    
 
    
