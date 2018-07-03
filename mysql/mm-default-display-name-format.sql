DROP TRIGGER IF EXISTS default_display_name_format;
DELIMITER //
CREATE TRIGGER default_display_name_format
AFTER INSERT ON `Users`
FOR EACH ROW
BEGIN
  IF (SELECT COUNT(*) FROM `Preferences` WHERE UserId=NEW.Id
  AND `Category`='display_settings' AND `Name`='name_format') = 0 THEN
  INSERT INTO `Preferences` (`UserId`,`Category`,`Name`,`Value`)
  VALUES (NEW.Id, 'display_settings', 'name_format', 'nickname_full_name');
  END IF;
END//
DELIMITER ;
