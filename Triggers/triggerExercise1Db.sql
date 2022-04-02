-- Create the triggerExercise1Db database and work on it.

CREATE DATABASE triggerExercise1Db;
USE triggerExercise1Db;

DROP DATABASE triggerExercise1Db;

-- Create a youtube_channel table that stores youtube channels.
-- The channels will have an id, a name and a number of subscribers.
-- Create the subscribers table, which will have an id, a name and the channel it is following.
-- With each subscriber insert and delete.
-- Constantly update de number of scubscribers in the structure of the youtube channel.

CREATE TABLE youtube_channel(
id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR(30),
subscriber_count INT
);

CREATE TABLE subscriber(
id INT PRIMARY KEY AUTO_INCREMENT,
s_name VARCHAR(30),
channel_id INT,
FOREIGN KEY(channel_id) REFERENCES youtube_channel(id)
);


DELIMITER $$
CREATE TRIGGER subscriber_insert
AFTER INSERT ON subscriber
FOR EACH ROW
BEGIN
UPDATE youtube_channel SET subscriber_count = subscriber_count +1 WHERE id = NEW.channel_id;
END$$
DELIMITER ;

DELIMITER @@
CREATE TRIGGER subscriber_delete
AFTER DELETE ON subscriber
FOR EACH ROW
BEGIN
UPDATE youtube_channel SET subscriber_count = subscriber_count -1 WHERE id = OLD.channel_id;
END@@
DELIMITER ;

INSERT INTO youtube_channel (c_name, subscriber_count) VALUES ('Vlog de IT', 0);
INSERT INTO youtube_channel (c_name, subscriber_count) VALUES ('Development Factory', 0);

INSERT INTO subscriber(s_name, channel_id) VALUES('Sub1', 1);
INSERT INTO subscriber(s_name, channel_id) VALUES('Sub2', 1);
INSERT INTO subscriber(s_name, channel_id) VALUES('Sub3', 2);
INSERT INTO subscriber(s_name, channel_id) VALUES('Sub4', 2);
INSERT INTO subscriber(s_name, channel_id) VALUES('Sub5', 1);
INSERT INTO subscriber(s_name, channel_id) VALUES('Sub6', 1);
INSERT INTO subscriber(s_name, channel_id) VALUES('Sub7', 2);
INSERT INTO subscriber(s_name, channel_id) VALUES('Sub8', 2);

SELECT * FROM youtube_channel;

DELETE FROM subscriber WHERE id =8;


