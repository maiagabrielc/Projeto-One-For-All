DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.user(
  id PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  age INT NOT NULL,
  id_plan INT NOT NULL,
  date_of_signature DATE NOT NULL,
  FOREIGN KEY(id_plan) REFERENCES plan(id)
);

CREATE TABLE SpotifyClone.plan(
  id PRIMARY KEY AUTO_INCREMENT,
  plan VARCHAR(20) NOT NULL,
  plan_value FLOAT NOT NULL
);

CREATE TABLE SpotifyClone.artist(
  id PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(25) NOT NULL
);