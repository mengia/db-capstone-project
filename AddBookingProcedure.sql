DELIMITER //
create procedure AddBooking(IN p_BookingID INT,
    IN p_BookingDate DATE,
    IN p_TableNumber INT,
    IN p_CustomerID INT,
    IN p_OrderID INT,
    IN p_StaffID INT)
    BEGIN
    INSERT INTO Bookings(BookingID, Date, TableNumber, CustomerID, OrderID, StaffID)
    VALUES (p_BookingID,p_BookingDate,p_TableNumber,p_CustomerID,p_OrderID,p_StaffID);
    SELECT CONCAT('New booking added') AS Confirmation;
    
    END //
    
    DELIMITER ;
    
