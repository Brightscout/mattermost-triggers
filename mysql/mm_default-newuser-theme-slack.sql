DROP TRIGGER IF EXISTS default_newuser_theme;
DELIMITER //
CREATE TRIGGER default_newuser_theme
AFTER INSERT ON `Users`
FOR EACH ROW
BEGIN
  IF (SELECT COUNT(*) FROM `Preferences` WHERE UserId=NEW.Id
  AND `Category`='theme') = 0 THEN
  INSERT INTO `Preferences` (`UserId`,`Category`,`Name`,`Value`)
  VALUES (NEW.Id, 'theme', '', '{"awayIndicator":"#E0B333","buttonBg":"#26a970","buttonColor":"#ffffff","centerChannelBg":"#ffffff","centerChannelColor":"#333333","codeTheme":"github","linkColor":"#2389d7","mentionBg":"#F15340","mentionColor":"#ffffff","mentionHighlightBg":"#fff2bb","mentionHighlightLink":"#2f81b7","newMessageSeparator":"#F80","onlineIndicator":"#F79F66","sidebarBg":"#003E6B","sidebarHeaderBg":"#000a52","sidebarHeaderTextColor":"#FFFFFF","sidebarText":"#FFFFFF","sidebarTextActiveBorder":"#73AD0D","sidebarTextActiveColor":"#FFFFFF","sidebarTextHoverBg":"#D37C71","sidebarUnreadText":"#FFFFFF","type":"custom"}');
  END IF;
END//
DELIMITER ;
