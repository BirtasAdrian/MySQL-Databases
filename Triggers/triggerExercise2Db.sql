-- Create the triggerExercise2Db database and work on it.
CREATE DATABASE triggerExercise2Db;
USE triggerExercise2Db;

DROP DATABASE triggerExercise2Db;

-- Create the teams table, which will store teams of players.
-- Teams will have an id, a current game and a number of players.
-- Create the player table with the columns id, name, phone number and a team.
-- Create the player_history table, which will store the data of all the players in our program.
-- These data will last forever.
-- With each insert and delete from the player table, constantly update the number of players on each team.
-- Also, each player will need to be persisted in player_history.

CREATE TABLE teams(
id INT PRIMARY KEY AUTO_INCREMENT,
current_game VARCHAR(20),
player_count INT
);

CREATE TABLE player(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
telephone_number VARCHAR(10),
team_id INT,
FOREIGN KEY(team_id) REFERENCES teams(id)
);

CREATE TABLE player_history(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
telephone_number VARCHAR(10)
);

-- Trigger 1

DELIMITER $$
CREATE TRIGGER player_insert
AFTER INSERT ON player
FOR EACH ROW
BEGIN
UPDATE teams SET player_count = player_count + 1 WHERE id = NEW.team_id;
INSERT INTO player_history(p_name, telephone_number) VALUES(NEW.p_name, NEW.telephone_number);
END$$
DELIMITER ;

DROP TRIGGER player_insert;

-- Trigger 2

DELIMITER @@
CREATE TRIGGER player_delete
AFTER DELETE ON player
FOR EACH ROW
BEGIN
UPDATE teams SET player_count = player_count -1 WHERE id = OLD.team_id;
END@@
DELIMITER ;

INSERT INTO teams(current_game, player_count) VALUES ('Lotr', 0);
INSERT INTO teams(current_game, player_count) VALUES ('W.O.W', 0);

INSERT INTO player(p_name, telephone_number, team_id) VALUES ('P1', '05689798', 1);
INSERT INTO player(p_name, telephone_number, team_id) VALUES ('P2', '05689778', 1);
INSERT INTO player(p_name, telephone_number, team_id) VALUES ('P3', '05689788', 2);

DROP TABLE player;

SELECT * FROM teams;

DELETE FROM player WHERE id =1;

SELECT * FROM player_history;



