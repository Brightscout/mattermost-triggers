UPDATE Preferences SET Value = 'nickname_full_name'
WHERE Category='display_settings' AND Name='name_format'

INSERT INTO Preferences (`UserId`, `Category`, `Name`, `Value`)
SELECT Id, 'display_settings', 'name_format', 'nickname_full_name'
FROM Users WHERE Id NOT IN (
  SELECT userId FROM Preferences WHERE Category='display_settings' AND Name='name_format'
);
