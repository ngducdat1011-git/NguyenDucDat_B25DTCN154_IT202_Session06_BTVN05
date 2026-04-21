CREATE TABLE Rooms (
    room_id INT PRIMARY KEY,
    room_name VARCHAR(100)
);
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    room_id INT,
    status VARCHAR(20)
);

INSERT INTO Rooms (room_id, room_name) 
VALUES
	(1, 'Deluxe'),
	(2, 'Suite'),
	(3, 'Standard');
INSERT INTO Bookings (booking_id, room_id, status) 
VALUES
	(101, 1, 'COMPLETED'),
	(102, NULL, 'CANCELLED');

SELECT r.room_id, r.room_name
FROM Rooms r
LEFT JOIN Bookings b 
ON r.room_id = b.room_id
WHERE b.room_id IS NULL;