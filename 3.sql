drop database if exists lolillo;
create database lolillo;
use lolillo;

CREATE TABLE champs(
champ_id INT Primary KEY,
champ_name VARCHAR(50),
release_year INT,
move_speed int,
base_ad int,
base_ap int
);
CREATE TABLE teams(
team_id int primary key,
region VARCHAR(50)
);
CREATE TABLE players(
player_name VARCHAR(50),
player_id int primary key,
team_id int,
player_role enum('top','jungle','mid','adc','support'),
FOREIGN KEY (team_id) REFERENCES teams(team_id)
);
CREATE TABLE games(
player_id int,
champ_id int,
side ENUM('red','blue'),
kills int,
deaths int,
assist int,
FOREIGN KEY (player_id) REFERENCES players(player_id),
FOREIGN KEY (champ_id) REFERENCES champs(champ_id)
);

INSERT INTO champs (champ_id, champ_name, release_year, move_speed, base_ad, base_ap) VALUES 
(1, 'Aatrox', 2013, 345, 60, 0),
(2, 'Ahri', 2011, 330, 53, 0),
(3, 'Akali', 2010, 345, 62, 0),
(4, 'Alistar', 2009, 330, 62, 0),
(5, 'Amumu', 2009, 335, 53, 0),
(6, 'Anivia', 2009, 325, 51, 0),
(7, 'Annie', 2009, 335, 50, 0),
(8, 'Aphelios', 2019, 325, 57, 0),
(9, 'Ashe', 2009, 325, 59, 0),
(10, 'Aurelion Sol', 2016, 325, 57, 0),
(11, 'Azir', 2014, 335, 52, 0),
(12, 'Bard', 2015, 330, 52, 0),
(13, 'Blitzcrank', 2009, 325, 62, 0),
(14, 'Brand', 2011, 340, 57, 0),
(15, 'Braum', 2014, 335, 55, 0),
(16, 'Caitlyn', 2011, 325, 62, 0),
(17, 'Camille', 2016, 340, 68, 0),
(18, 'Cassiopeia', 2010, 328, 53, 0),
(19, 'Cho\'Gath', 2009, 345, 69, 0),
(20, 'Corki', 2009, 325, 55, 0),
(21, 'Darius', 2012, 340, 64, 0),
(22, 'Diana', 2011, 345, 57, 0),
(23, 'Dr. Mundo', 2009, 345, 61, 0),
(24, 'Draven', 2012, 330, 60, 0),
(25, 'Ekko', 2015, 340, 58, 0),
(26, 'Elise', 2012, 330, 55, 0),
(27, 'Evelynn', 2009, 335, 61, 0),
(28, 'Ezreal', 2010, 325, 60, 0),
(29, 'Fiddlesticks', 2009, 335, 55, 0),
(30, 'Fiora', 2011, 345, 68, 0),
(31, 'Fizz', 2011, 335, 58, 0),
(32, 'Galio', 2010, 335, 62, 0),
(33, 'Gangplank', 2009, 345, 64, 0),
(34, 'Garen', 2010, 340, 66, 0),
(35, 'Gnar', 2014, 325, 57, 0),
(36, 'Gragas', 2010, 330, 64, 0),
(37, 'Graves', 2011, 340, 66, 0),
(38, 'Gwen', 2021, 340, 63, 0),
(39, 'Hecarim', 2012, 345, 66, 0),
(40, 'Heimerdinger', 2009, 340, 56, 0),
(41, 'Illaoi', 2015, 350, 68, 0),
(42, 'Irelia', 2010, 335, 65, 0),
(43, 'Ivern', 2016, 330, 50, 0),
(44, 'Janna', 2009, 315, 52, 0),
(45, 'Jarvan IV', 2011, 340, 64, 0),
(46, 'Jax', 2009, 350, 68, 0),
(47, 'Jayce', 2012, 335, 54, 0),
(48, 'Jhin', 2016, 330, 59, 0),
(49, 'Jinx', 2013, 325, 57, 0),
(50, 'Kai\'Sa', 2018, 335, 59, 0),
(51, 'Kalista', 2014, 325, 69, 0),
(52, 'Karma', 2011, 335, 53, 0),
(53, 'Karthus', 2009, 335, 46, 0),
(54, 'Kassadin', 2009, 340, 59, 0),
(55, 'Katarina', 2009, 335, 58, 0),
(56, 'Kayle', 2009, 335, 50, 0),
(57, 'Kayn', 2017, 340, 68, 0),
(58, 'Kennen', 2010, 335, 61, 0),
(59, 'Kha\'Zix', 2012, 350, 63, 0),
(60, 'Kindred', 2015, 325, 65, 0),
(61, 'Kled', 2016, 345, 65, 0),
(62, 'Kog\'Maw', 2010, 325, 61, 0),
(63, 'LeBlanc', 2010, 340, 55, 0),
(64, 'Lee Sin', 2011, 345, 69, 0),
(65, 'Leona', 2011, 335, 60, 0),
(66, 'Lillia', 2020, 330, 61, 0),
(67, 'Lissandra', 2013, 325, 53, 0),
(68, 'Lucian', 2013, 335, 64, 0),
(69, 'Lulu', 2012, 330, 47, 0),
(70, 'Lux', 2010, 330, 53, 0),
(71, 'Malphite', 2009, 335, 62, 0),
(72, 'Malzahar', 2010, 335, 55, 0),
(73, 'Maokai', 2011, 335, 64, 0),
(74, 'Master Yi', 2009, 355, 66, 0),
(75, 'Miss Fortune', 2010, 325, 52, 0),
(76, 'Mordekaiser', 2010, 340, 61, 0),
(77, 'Morgana', 2009, 335, 56, 0),
(78, 'Nami', 2012, 335, 55, 0),
(79, 'Nasus', 2009, 350, 67, 0),
(80, 'Nautilus', 2012, 325, 61, 0),
(81, 'Neeko', 2018, 340, 54, 0),
(82, 'Nidalee', 2009, 335, 61, 0),
(83, 'Nocturne', 2011, 345, 65, 0),
(84, 'Nunu & Willump', 2009, 345, 61, 0),
(85, 'Olaf', 2010, 350, 68, 0),
(86, 'Orianna', 2011, 325, 52, 0),
(87, 'Ornn', 2017, 335, 69, 0),
(88, 'Pantheon', 2010, 355, 64, 0),
(89, 'Poppy', 2010, 345, 64, 0),
(90, 'Pyke', 2018, 330, 62, 0),
(91, 'Qiyana', 2019, 335, 66, 0),
(92, 'Quinn', 2013, 335, 59, 0),
(93, 'Rakan', 2017, 335, 62, 0),
(94, 'Rammus', 2009, 335, 56, 0),
(95, 'Rek\'Sai', 2014, 335, 58, 0),
(96, 'Rell', 2020, 335, 55, 0),
(97, 'Renekton', 2011, 345, 69, 0),
(98, 'Rengar', 2012, 345, 68, 0),
(99, 'Riven', 2011, 340, 64, 0),
(100, 'Rumble', 2011, 345, 61, 0);

INSERT INTO teams (team_id, region) VALUES
(1, 'JD Gaming - LPL'),
(2, 'Bilibili Gaming - LPL'),
(3, 'Weibo Gaming - LPL'),
(4, 'LNG Esports - LPL'),
(5, 'Gen.G - LCK'),
(6, 'T1 - LCK'),
(7, 'KT Rolster - LCK'),
(8, 'Dplus KIA - LCK'),
(9, 'G2 Esports - LEC'),
(10, 'MAD Lions - LEC'),
(11, 'Fnatic - LEC'),
(12, 'Team BDS - LEC'),
(13, 'Cloud9 - LCS'),
(14, 'NRG - LCS'),
(15, 'Golden Guardians - LCS'),
(16, 'DetonatioN FocusMe - LJL'),
(17, 'PSG Talon - PCS'),
(18, 'CTBC Flying Oyster - PCS'),
(19, 'Loud - CBLOL'),
(20, 'Movistar R7 - LLA'),
(21, 'GAM Esports - VCS'),
(22, 'Team Whales - VCS'),
(23, 'CTBC Flying Oyster - PCS'),
(24, 'Team Liquid - LCS');

INSERT INTO players (player_name, player_id, team_id, player_role) VALUES
-- JD Gaming
('369', 1, 1, 'top'),
('Kanavi', 2, 1, 'jungle'),
('Knight', 3, 1, 'mid'),
('Ruler', 4, 1, 'adc'),
('Missing', 5, 1, 'support'),

-- Bilibili Gaming
('Bin', 6, 2, 'top'),
('XUN', 7, 2, 'jungle'),
('Yagao', 8, 2, 'mid'),
('Elk', 9, 2, 'adc'),
('ON', 10, 2, 'support'),

-- Weibo Gaming
('TheShy', 11, 3, 'top'),
('WeiWei', 12, 3, 'jungle'),
('Xiaohu', 13, 3, 'mid'),
('Light', 14, 3, 'adc'),
('Crisp', 15, 3, 'support'),

-- LNG Esports
('Zika', 16, 4, 'top'),
('Tarzan', 17, 4, 'jungle'),
('Scout', 18, 4, 'mid'),
('GALA', 19, 4, 'adc'),
('Hang', 20, 4, 'support'),

-- Gen.G
('Doran', 21, 5, 'top'),
('Peanut', 22, 5, 'jungle'),
('Chovy', 23, 5, 'mid'),
('Peyz', 24, 5, 'adc'),
('Delight', 25, 5, 'support'),

-- T1
('Zeus', 26, 6, 'top'),
('Oner', 27, 6, 'jungle'),
('Faker', 28, 6, 'mid'),
('Gumayusi', 29, 6, 'adc'),
('Keria', 30, 6, 'support'),

-- KT Rolster
('Kiin', 31, 7, 'top'),
('Cuzz', 32, 7, 'jungle'),
('Bdd', 33, 7, 'mid'),
('Aiming', 34, 7, 'adc'),
('Lehends', 35, 7, 'support'),

-- Dplus KIA
('Canna', 36, 8, 'top'),
('Canyon', 37, 8, 'jungle'),
('ShowMaker', 38, 8, 'mid'),
('Deft', 39, 8, 'adc'),
('Kellin', 40, 8, 'support'),

-- G2 Esports
('BrokenBlade', 41, 9, 'top'),
('Yike', 42, 9, 'jungle'),
('Caps', 43, 9, 'mid'),
('Hans sama', 44, 9, 'adc'),
('Mikyx', 45, 9, 'support'),

-- MAD Lions
('Chasy', 46, 10, 'top'),
('Elyoya', 47, 10, 'jungle'),
('Nisqy', 48, 10, 'mid'),
('Carzzy', 49, 10, 'adc'),
('Hylissang', 50, 10, 'support'),

-- Fnatic
('Oscarinin', 51, 11, 'top'),
('Razork', 52, 11, 'jungle'),
('Humanoid', 53, 11, 'mid'),
('Noah', 54, 11, 'adc'),
('Trymbi', 55, 11, 'support'),

-- Team BDS
('Adam', 56, 12, 'top'),
('Sheo', 57, 12, 'jungle'),
('Nuc', 58, 12, 'mid'),
('Crownie', 59, 12, 'adc'),
('Labrov', 60, 12, 'support'),

-- Cloud9
('Fudge', 61, 13, 'top'),
('Blaber', 62, 13, 'jungle'),
('EMENES', 63, 13, 'mid'),
('Berserker', 64, 13, 'adc'),
('Zven', 65, 13, 'support'),

-- NRG
('Dhokla', 66, 14, 'top'),
('Contracts', 67, 14, 'jungle'),
('Palafox', 68, 14, 'mid'),
('FBI', 69, 14, 'adc'),
('IgNar', 70, 14, 'support'),

-- Golden Guardians
('Licorice', 71, 15, 'top'),
('River', 72, 15, 'jungle'),
('Gori', 73, 15, 'mid'),
('Stixxay', 74, 15, 'adc'),
('huhi', 75, 15, 'support'),

-- DetonatioN FocusMe
('Evi', 76, 16, 'top'),
('Steal', 77, 16, 'jungle'),
('Aria', 78, 16, 'mid'),
('Yutapon', 79, 16, 'adc'),
('Harp', 80, 16, 'support'),

-- PSG Talon
('Azhi', 81, 17, 'top'),
('JunJia', 82, 17, 'jungle'),
('Ubao', 83, 17, 'mid'),
('Wako', 84, 17, 'adc'),
('SwordArt', 85, 17, 'support'),

-- CTBC Flying Oyster
('Rest', 86, 18, 'top'),
('Husha', 87, 18, 'jungle'),
('M1ssion', 88, 18, 'mid'),
('Shunn', 89, 18, 'adc'),
('Koala', 90, 18, 'support'),

-- Loud
('Robo', 91, 19, 'top'),
('Croc', 92, 19, 'jungle'),
('Tinowns', 93, 19, 'mid'),
('Brance', 94, 19, 'adc'),
('Ceos', 95, 19, 'support'),

-- Movistar R7
('Bong', 96, 20, 'top'),
('Oddie', 97, 20, 'jungle'),
('Leza', 98, 20, 'mid'),
('Miru', 99, 20, 'adc'),
('Baula', 100, 20, 'support'),

-- GAM Esports
('Kiaya', 101, 21, 'top'),
('Levi', 102, 21, 'jungle'),
('Kati', 103, 21, 'mid'),
('Stylles', 104, 21, 'adc'),
('Bie', 105, 21, 'support'),

-- Team Whales
('Naguya', 106, 22, 'top'),
('Penguin', 107, 22, 'jungle'),
('Glory', 108, 22, 'mid'),
('Arrietty', 109, 22, 'adc'),
('SlaYer', 110, 22, 'support'),

-- Team Liquid
('Summit', 111, 24, 'top'),
('Pyosik', 112, 24, 'jungle'),
('APA', 113, 24, 'mid'),
('Yeon', 114, 24, 'adc'),
('CoreJJ', 115, 24, 'support');

INSERT INTO games (player_id, champ_id, side, kills, deaths, assist) VALUES
-- Partidas simuladas para jugadores en el lado azul
(1, 1, 'blue', 5, 2, 10),   -- Player 1, champion ID 1
(2, 2, 'blue', 3, 4, 8),    -- Player 2, champion ID 2
(3, 3, 'blue', 7, 1, 9),    -- Player 3, champion ID 3
(4, 4, 'blue', 10, 3, 5),   -- Player 4, champion ID 4
(5, 5, 'blue', 2, 5, 12),   -- Player 5, champion ID 5
(6, 1, 'blue', 4, 2, 7),    -- Player 6, champion ID 1
(7, 2, 'blue', 8, 1, 9),    -- Player 7, champion ID 2
(8, 3, 'blue', 6, 3, 10),   -- Player 8, champion ID 3
(9, 4, 'blue', 11, 0, 8),   -- Player 9, champion ID 4
(10, 5, 'blue', 5, 4, 6),   -- Player 10, champion ID 5
(11, 1, 'blue', 3, 1, 10),   -- Player 11, champion ID 1
(12, 2, 'blue', 6, 3, 7),    -- Player 12, champion ID 2
(13, 3, 'blue', 9, 2, 9),    -- Player 13, champion ID 3
(14, 4, 'blue', 4, 5, 6),     -- Player 14, champion ID 4
(15, 5, 'blue', 2, 6, 11),    -- Player 15, champion ID 5

-- Partidas simuladas para jugadores en el lado rojo
(16, 1, 'red', 10, 4, 5),    -- Player 16, champion ID 1
(17, 2, 'red', 2, 3, 9),     -- Player 17, champion ID 2
(18, 3, 'red', 8, 1, 7),     -- Player 18, champion ID 3
(19, 4, 'red', 3, 2, 12),    -- Player 19, champion ID 4
(20, 5, 'red', 4, 5, 8),     -- Player 20, champion ID 5
(21, 1, 'red', 11, 2, 10),    -- Player 21, champion ID 1
(22, 2, 'red', 6, 3, 9),      -- Player 22, champion ID 2
(23, 3, 'red', 9, 2, 10),      -- Player 23, champion ID 3
(24, 4, 'red', 4, 4, 8),       -- Player 24, champion ID 4
(25, 5, 'red', 3, 6, 11),      -- Player 25, champion ID 5
(26, 1, 'red', 5, 1, 10),      -- Player 26, champion ID 1
(27, 2, 'red', 4, 3, 7),       -- Player 27, champion ID 2
(28, 3, 'red', 8, 2, 9),       -- Player 28, champion ID 3
(29, 4, 'red', 12, 0, 6),      -- Player 29, champion ID 4
(30, 5, 'red', 5, 3, 9),       -- Player 30, champion ID 5

-- Otras partidas simuladas
(31, 6, 'blue', 4, 2, 6),      -- Player 31, champion ID 6
(32, 7, 'red', 6, 3, 5),       -- Player 32, champion ID 7
(33, 8, 'blue', 5, 4, 7),      -- Player 33, champion ID 8
(34, 9, 'red', 3, 2, 8),       -- Player 34, champion ID 9
(35, 10, 'blue', 2, 1, 12),    -- Player 35, champion ID 10
(36, 11, 'red', 7, 3, 10),     -- Player 36, champion ID 11
(37, 12, 'blue', 10, 2, 8),    -- Player 37, champion ID 12
(38, 13, 'red', 3, 5, 6),      -- Player 38, champion ID 13
(39, 14, 'blue', 8, 1, 9),     -- Player 39, champion ID 14
(40, 15, 'red', 4, 2, 11),     -- Player 40, champion ID 15
(41, 16, 'blue', 5, 4, 9),     -- Player 41, champion ID 16
(42, 17, 'red', 9, 3, 8),      -- Player 42, champion ID 17
(43, 18, 'blue', 7, 2, 12),    -- Player 43, champion ID 18
(44, 19, 'red', 2, 1, 10),     -- Player 44, champion ID 19
(45, 20, 'blue', 6, 3, 6),     -- Player 45, champion ID 20
(46, 21, 'red', 3, 2, 7),      -- Player 46, champion ID 21
(47, 22, 'blue', 8, 4, 5),     -- Player 47, champion ID 22
(48, 23, 'red', 4, 3, 10),     -- Player 48, champion ID 23
(49, 24, 'blue', 11, 1, 6),    -- Player 49, champion ID 24
(50, 25, 'red', 9, 5, 9);       -- Player 50, champion ID 25

-- 1 - Cuantas kills han habido en total?
select sum(kills)
from games;
-- 2 - Cuantos equipos hay?
select count(team_id) from teams;
-- 3 - Cuantas veces se ha jugado Caitlyn en las partidas registradas?
select p.player_name, count(g.player_id)
from games g
join players p
on g.player_id=p.player_id
where p.player_name like '%Caitlyn%';
-- 4 - Muestra los campeones empiezan por la letra A
select champ_name 
from champs 
where champ_name like 'A%';
-- 5 - Cuantos campeones salieron el año 2009?
select count(champ_name)
from champs
where release_year = 2009;
-- 6 - Cuantas veces ha jugado 369 en el lado 'blue'?
select p.player_name, g.side
from games g
join players p
on g.player_id=p.player_id
where p.player_name = '369'
and g.side = 'blue';
-- 7 - Cuantos jugadores 'mid' de la 'LCK' hay?
select count(p.player_name) jugadores
from players p
join teams t
on p.team_id=t.team_id
where p.player_role = 'mid' 
and t.region like '%LCK';
-- 8 - Cual ha sido el campeon más jugado?
select ch.champ_name, count(g.champ_id) veces_que_han_ganado
from champs ch
join games g
on ch.champ_id=g.champ_id
group by ch.champ_name;
-- 9 - Cuantos jugadores de la LEC han jugado Aatrox?
select COUNT(p.player_id) TOTAL_jugadores
from games g
join players p 
on g.player_id=p.player_id
join teams t
on p.team_id=t.team_id
join champs ch
on ch.champ_id=g.champ_id
where ch.champ_name like '%Aatrox%'
and t.region like '%LEC';
-- 10 - Cual es el KDA (Kills+Asisencias/Muertes) de los jugadores de JD Gaming?
select g.kills, g.asists, g.deaths
from games g
join players p
on g.player_id=




