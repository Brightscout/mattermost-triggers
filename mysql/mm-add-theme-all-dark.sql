INSERT INTO Preferences (`UserId`, `Category`, `Name`, `Value`)
SELECT Id, 'theme', '', '{"awayIndicator":"#c1b966","buttonBg":"#0177e7","buttonColor":"#ffffff","centerChannelBg":"#1f1f1f","centerChannelColor":"#dddddd","codeTheme":"monokai","dndIndicator":"#e81023","errorTextColor":"#ff6461","image":"/static/files/37bdb7f8db233daef529366b5772bb3f.png","linkColor":"#0d93ff","mentionBg":"#0177e7","mentionColor":"#ffffff","mentionHighlightBg":"#784098","mentionHighlightLink":"#a4ffeb","newMessageSeparator":"#cc992d","onlineIndicator":"#399fff","sidebarBg":"#171717","sidebarHeaderBg":"#1f1f1f","sidebarHeaderTextColor":"#ffffff","sidebarText":"#ffffff","sidebarTextActiveBorder":"#196caf","sidebarTextActiveColor":"#ffffff","sidebarTextHoverBg":"#302e30","sidebarUnreadText":"#ffffff","type":"Windows Dark"}'
FROM Users WHERE Id NOT IN (
  SELECT userId FROM Preferences WHERE Category='theme'
);
