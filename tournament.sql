-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament;

--DROP TABLE IF EXISTS players CASCADE;
--DROP TABLE IF EXISTS matches CASCADE;


-- Creates a table of players in a tournament

CREATE TABLE players (id SERIAL primary key, name TEXT);


-- Creates a table of matches between players in the tournament

CREATE TABLE matches (id SERIAL primary key,
winner integer REFERENCES players (id),
loser integer REFERENCES players(id));



-- Creates a view of the standings

CREATE VIEW playerstandings AS
SELECT players.id, players.name, (SELECT COUNT(*) FROM matches WHERE players.id = matches.winner) AS wins,
(SELECT COUNT(*) FROM matches WHERE players.id = matches.winner OR players.id = matches.loser) AS player_matches
From players ORDER BY wins DESC;





