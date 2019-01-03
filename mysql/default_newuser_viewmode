DROP TRIGGER IF EXISTS default_newuser_viewmode;
DELIMITER //
CREATE TRIGGER default_newuser_viewmode
AFTER INSERT ON `Users`
FOR EACH ROW
BEGIN
  IF (SELECT COUNT(*) FROM `Preferences` WHERE UserId=NEW.Id
  AND `Category`='display_settings') = 0 THEN
  INSERT INTO `Preferences` (`UserId`,`Category`,`Name`,`Value`)
  VALUES (NEW.Id, 'display_settings', 'message_display', 'compact');
  END IF;
END//
DELIMITER ;
