INSERT INTO Preferences (`UserId`, `Category`, `Name`, `Value`)
SELECT Id, 'advanced_settings', 'join_leave', 'false'
FROM Users WHERE Id NOT IN (
  SELECT userId FROM Preferences WHERE Category='advanced_settings' AND Name='join_leave'
);
