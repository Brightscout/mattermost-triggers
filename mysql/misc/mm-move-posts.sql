select * from Teams \G;
SELECT * FROM Channels WHERE Name = 'town-square' AND TeamId = 'fpyounja5ift5xjte6pfiqahto' \G;
SELECT * FROM Channels WHERE Name = 'cto-virtual-town-hall' AND TeamId = 'fpyounja5ift5xjte6pfiqahto' \G;



SELECT FROM_UNIXTIME(CreateAt/1000, "%Y-%m-%d %H:%i:%s"), Message FROM Posts
	WHERE
		ChannelId = "94jqff66t78i8pwwouhj6cpyue"
	AND
		FROM_UNIXTIME(CreateAt/1000) BETWEEN "2018-05-18 10:12:49" AND "2018-05-18 14:19:43"
	ORDER BY CreateAt ASC;



UPDATE Posts
	SET
		ChannelId = "tzs978akcf89dbjm9ggnh8ei7h"
	WHERE
		ChannelId = "94jqff66t78i8pwwouhj6cpyue"
	AND
		FROM_UNIXTIME(CreateAt/1000) BETWEEN "2018-05-18 10:12:49" AND "2018-05-18 14:19:43"


UPDATE Posts SET ChannelId = "tzs978akcf89dbjm9ggnh8ei7h" WHERE ChannelId = "94jqff66t78i8pwwouhj6cpyue" AND FROM_UNIXTIME(CreateAt/1000) BETWEEN "2018-05-18 10:12:49" AND "2018-05-18 14:19:43"
