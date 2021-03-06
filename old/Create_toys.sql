CREATE DATABASE IF NOT EXISTS TOYS;

USE TOYS;

CREATE TABLE IF NOT EXISTS TypeUsers(
	id_type INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	typeName VARCHAR(30) DEFAULT NULL,
	UNIQUE(typeName)
);

CREATE TABLE IF NOT EXISTS Email(
	id_email INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_user INT(11),
	nameMail VARCHAR(30) DEFAULT NULL,
	typeMail INT(11) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Phone(
	id_phone INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_user INT(11),
	numberPhone VARCHAR(30) DEFAULT NULL,
	typePhone INT(11) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Goods(
	id_good INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nameGood VARCHAR(30),
	countryMade INT(11),
	available INT(11),
	discount INT(11),
	price INT(11)
);

CREATE TABLE IF NOT EXISTS OrderGoods(
	id_order INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_user INT(11),
	id_good	INT(11),
	orderStatus INT(11),
	typeDelivery INT(11),
	statusDeliv INT(11)
);


	