DROP TRIGGER IF EXISTS default_newuser_theme;
DELIMITER //
CREATE TRIGGER default_newuser_theme
AFTER INSERT ON `Users`
FOR EACH ROW
BEGIN
  IF (SELECT COUNT(*) FROM `Preferences` WHERE UserId=NEW.Id
  AND `Category`='theme') = 0 THEN
  INSERT INTO `Preferences` (`UserId`,`Category`,`Name`,`Value`)
  VALUES (NEW.Id, 'theme', '', '{"awayIndicator":"#c1b966","buttonBg":"#0177e7","buttonColor":"#ffffff","centerChannelBg":"#1f1f1f","centerChannelColor":"#dddddd","codeTheme":"monokai","dndIndicator":"#e81023","errorTextColor":"#ff6461","image":"/static/files/37bdb7f8db233daef529366b5772bb3f.png","linkColor":"#0d93ff","mentionBg":"#0177e7","mentionColor":"#ffffff","mentionHighlightBg":"#784098","mentionHighlightLink":"#a4ffeb","newMessageSeparator":"#cc992d","onlineIndicator":"#399fff","sidebarBg":"#171717","sidebarHeaderBg":"#1f1f1f","sidebarHeaderTextColor":"#ffffff","sidebarText":"#ffffff","sidebarTextActiveBorder":"#196caf","sidebarTextActiveColor":"#ffffff","sidebarTextHoverBg":"#302e30","sidebarUnreadText":"#ffffff","type":"Windows Dark"}');
  END IF;
END//
DELIMITER ;
