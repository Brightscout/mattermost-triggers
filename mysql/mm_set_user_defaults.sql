DROP TRIGGER IF EXISTS mm_on_newuser;
DELIMITER //
CREATE TRIGGER mm_on_newuser
AFTER INSERT ON `Users`
FOR EACH ROW
BEGIN
  IF (SELECT COUNT(*) FROM `Preferences` WHERE UserId=NEW.Id
  AND `Category`='theme') = 0 THEN
  INSERT INTO `Preferences` (`UserId`,`Category`,`Name`,`Value`)
  VALUES (NEW.Id, 'theme', '', '{"awayIndicator":"#c1b966","buttonBg":"#4cbba4","buttonColor":"#ffffff","centerChannelBg":"#2f3e4e","centerChannelColor":"#dddddd","codeTheme":"solarized-dark","dndIndicator":"#e81023","errorTextColor":"#ff6461","image":"/static/files/e3e97913deb1883d74e984b222714f9f.png","linkColor":"#a4ffeb","mentionBg":"#b74a4a","mentionColor":"#ffffff","mentionHighlightBg":"#984063","mentionHighlightLink":"#a4ffeb","newMessageSeparator":"#5de5da","onlineIndicator":"#65dcc8","sidebarBg":"#1b2c3e","sidebarHeaderBg":"#1b2c3e","sidebarHeaderTextColor":"#ffffff","sidebarText":"#ffffff","sidebarTextActiveBorder":"#66b9a7","sidebarTextActiveColor":"#ffffff","sidebarTextHoverBg":"#4a5664","sidebarUnreadText":"#ffffff","type":"Mattermost Dark"}');
  END IF;

  IF (SELECT COUNT(*) FROM `Preferences`WHERE UserId=NEW.Id
  AND `Category`='advanced_settings' AND `Name`='join_leave') = 0 THEN
  INSERT INTO `Preferences` (`UserId`, `Category`, `Name`, `Value`)
  VALUES (NEW.Id, 'advanced_settings', 'join_leave', 'false');
  END IF;
END//
DELIMITER ;
