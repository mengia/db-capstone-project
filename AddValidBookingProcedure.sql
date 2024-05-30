DELIMITER //

CREATE PROCEDURE AddValidBooking(
    IN p_BookingID INT,
    IN p_BookingDate DATE,
    IN p_TableNumber INT,
    IN p_CustomerID INT,
    IN p_OrderID INT,
    IN p_StaffID INT
)
BEGIN
    DECLARE bookingCount INT;
    

    START TRANSACTION;
    
    -- Check if the table is already booked 
    SELECT COUNT(*) INTO bookingCount
    FROM Bookings
    WHERE Date = p_BookingDate AND TableNumber = p_TableNumber;
    
    -- If the table is already booked, rollback the transaction
    IF bookingCount > 0 THEN
        ROLLBACK;
        SELECT CONCAT('Table ', p_TableNumber, ' is already booked on ', p_BookingDate, ' cancel booking') AS BookingStatus;
    ELSE
        -- new booking and commit the transaction
        INSERT INTO Bookings (BookingID, Date, TableNumber, CustomerID, OrderID, StaffID)
        VALUES (p_BookingID, p_BookingDate, p_TableNumber, p_CustomerID, p_OrderID, p_StaffID);
        COMMIT;
        SELECT CONCAT('Booking for Table ', p_TableNumber, ' on ', p_BookingDate, ' is confirmed') AS BookingStatus;
    END IF;
END //

DELIMITER ;


