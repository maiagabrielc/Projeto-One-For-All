DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plans(
  plans_id INT PRIMARY KEY AUTO_INCREMENT,
  plan VARCHAR(30) UNIQUE NOT NULL,
  plan_value DECIMAL(3, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.artist(
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(25) UNIQUE NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.user(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(50) NOT NULL,
  age INT NOT NULL,
  id_plan INT NOT NULL,
  date_of_signature DATE NOT NULL,
  FOREIGN KEY(id_plan) REFERENCES SpotifyClone.plans(plans_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.albums(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album VARCHAR(25) UNIQUE NOT NULL,
  artist_id INT NOT NULL,
  release_year YEAR NOT NULL,
  FOREIGN KEY(artist_id) REFERENCES SpotifyClone.artist(artist_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.songs(
  song_id INT PRIMARY KEY AUTO_INCREMENT,
  song VARCHAR(50) UNIQUE NOT NULL,
  duration_seconds INT NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY(album_id) REFERENCES SpotifyClone.albums(album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.plays(
  user_id INT NOT NULL,
  song_played INT NOT NULL,
  date_played DATETIME NOT NULL,
  CONSTRAINT PRIMARY KEY(user_id, song_played),
  FOREIGN KEY(song_played) REFERENCES SpotifyClone.songs(song_id),
  FOREIGN KEY(user_id) REFERENCES SpotifyClone.user(user_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.follows(
  user_id INT NOT NULL,
  FOREIGN KEY(user_id) REFERENCES SpotifyClone.user(user_id),
  artist_id INT NOT NULL,
  FOREIGN KEY(artist_id) REFERENCES SpotifyClone.artist(artist_id),
  CONSTRAINT PRIMARY KEY (user_id, artist_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.artist(name)
VALUES('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon'),
('Tyler Isle'),
('Fog');



INSERT INTO SpotifyClone.plans(plan, plan_value)
VALUES ('gratuito', 0),
('famliar', 7.99),
('universitário', 5.99),
('pessoal', 6.99);



INSERT INTO SpotifyClone.user(user_name, age, id_plan, date_of_signature)
VALUES ('Thati', 23, 1, '2019-10-20'),
('Cintia', 35, 2, '2017-12-30'),
('Bill', 20, 3, '2019-06-05'),
('Roger', 45, 4, '2020-05-13'),
('Norman', 58, 4, '2017-02-17'),
('Patrick', 33, 2, '2017-01-06'),
('Vivian', 26, 3, '2018-01-05'),
('Carol', 19, 3, '2018-02-14'),
('Angelina', 42, 2, '2018-04-29'),
('Paul', 46, 2, '2017-01-17');



INSERT INTO SpotifyClone.albums(album, artist_id, release_year)
VALUES ('Envious', 1, 1990),
('Exuberant', 1, 1993),
('Hallowed Steam', 2, 1995),
('Incandescent', 3, 1998),
('Temporary Culture', 4, 2001),
('Library of liberty', 4, 2003),
('Chained Down', 5, 2007),
('Cabinet of fools', 5, 2012),
('No guarantees', 5, 2015),
('Apparatus', 6, 2015);



INSERT INTO SpotifyClone.songs(song, duration_seconds, album_id)
VALUES ("Soul For Us", 200, 1),
("Troubles Of My Inner Fire", 203, 2),
("Magic Circus", 105, 3),
("Fantasy For Me", 100, 4),
("Thang Of Thunder", 240, 5),
("Need Of The Evening", 190, 6),
("Finding My Traditions", 179, 7),
("She Thinks I Won't Stay Tonight", 166, 8),
("He's Walking Away", 159, 9),
("Honey", 79, 10),
("Reflections Of Magic", 163, 1),
( "Time Fireworks", 152, 2),
( "Honey, So Do I", 207, 3),
( "Celebration Of More", 146, 4),
( "Words Of Her Life", 185, 5),
( "History Of My Roses", 222, 6),
(  "Walking And Man", 229, 7),
( "He Heard You're Bad For Me", 154, 8),
( "He's Trouble", 138, 9),
( "You Cheated On Me", 95, 10),
( "Dance With Her Own", 116, 1),
( "Sweetie, Let's Go Wild", 139, 3),
( "Rock His Everything", 223, 4),
( "Without My Streets", 176, 5),
( "Without My Love", 111, 6),
( "Hard And Time", 135, 7),
( "He Hopes We Can't Stay", 210, 8),
( "I Heard I Want To Bo Alone", 120, 9),
( "Wouldn't It Be Nice", 213, 10),
( "She Knows", 244, 3),
( "Home Forever", 231, 4),
( "Walking And Game", 123, 6),
( "Honey, I'm A Lone Wolf", 150, 7),
( "I Know I Know", 117, 8),
( "I Ride Alone", 151, 9),
( "Baby", 136, 10),
( "Diamond Power", 241, 4),
( "Young And Father", 197, 6),
(  "You Make Me Feel So..", 83, 10),
( "Let's Be Silly", 132, 4);



INSERT INTO SpotifyClone.plays(song_played, user_id, date_played)
VALUES (10,	1, "2020-02-28 10:45:55"),
(28, 2, "2020-01-02 07:40:33"),
(3, 3, "2020-11-13 16:55:13"),
(11, 4, "2021-08-15 17:10:10"),
(13, 5, "2020-07-03 19:33:28"),
(29, 6, "2019-02-07 20:33:48"),
(12, 7, "2018-05-09 22:30:49"),
(36, 8, "2018-03-21 16:56:40"),
(5, 9, "2021-05-24 17:23:45"),
(16, 10, "2017-02-06 08:21:34"),
(17, 1, "2020-05-02 05:30:35"),
(7, 2, "2020-05-16 06:16:22"),
(21, 3, "2020-12-05 18:38:30"),
(35, 4, "2021-07-10 15:20:30"),
(23, 5, "2017-02-24 21:14:22"),
(18, 6, "2017-01-24 00:31:17"),
(2, 7, "2020-07-27 12:52:58"),
(39, 8, "2020-10-18 13:38:05"),
(15, 9, "2018-12-07 22:48:52"),
(25, 10, "2017-12-04 05:33:43"),
(38, 1, "2020-03-06 11:22:33"),
(25, 2, "2020-10-09 12:27:48"),
(26, 3, "2020-07-30 10:00:00"),
(33, 4, "2021-01-09 01:44:33"),
(37, 5, "2020-08-06 15:23:43"),
(27, 6, "2017-10-12 12:35:20"),
(14, 7, "2018-01-16 18:40:43"),
(9, 8, "2019-05-25 08:14:03"),
(22, 9, "2021-03-14 06:14:26"),
(23, 10, "2017-07-27 05:24:49"),
(37, 1, "2020-08-05 08:05:17"),
(36, 2, "2020-09-21 13:14:46"),
(1, 5,"2020-11-10 13:52:27"),
(32, 6, "2018-05-29 14:56:41"),
(19, 8, "2021-08-15 21:37:09"),
(30, 9, "2020-04-01 03:36:00"),
(31, 10, "2017-12-25 01:03:57"),
(40, 1, "2020-09-14 16:32:22");



INSERT INTO SpotifyClone.follows(user_id, artist_id)
VALUES (1, 1),
(2, 1),
(3, 2),
(4, 4),
(5, 5),
(6, 6),
(7, 2),
(8, 1),
(9, 6),
(10, 2),
(1, 4),
(2, 3),
(3, 1),
(5, 6),
(6, 3),
(7, 5),
(8, 5),
(9, 4),
(10, 6),
(1, 3),
(6, 1),
(9, 3);
