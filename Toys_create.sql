DROP DATABASE TOYS;
CREATE DATABASE IF NOT EXISTS TOYS;

USE TOYS;

CREATE TABLE IF NOT EXISTS Users (
	id_user int(11) NOT NULL AUTO_INCREMENT,
	type_UsCode int(11) NOT NULL,
	nameUser varchar(30) NOT NULL,
	surNameUser varchar(30) NOT NULL,
	passUser varchar(80) NOT NULL,
	PRIMARY KEY (id_user)
);

CREATE TABLE IF NOT EXISTS UserType (
	id_type int(11) NOT NULL AUTO_INCREMENT,
	type_user varchar(30) NOT NULL UNIQUE,
	type_code int(2) NOT NULL UNIQUE,
	PRIMARY KEY (id_type)
);

CREATE TABLE IF NOT EXISTS Email (
	id_email int(11) NOT NULL AUTO_INCREMENT,
	name_email varchar(30) NOT NULL UNIQUE,
	email_user_id int(11) NOT NULL,
	email_type int(11) NOT NULL,
	PRIMARY KEY (id_email)
);

CREATE TABLE IF NOT EXISTS Phone (
	id_phone int(11) NOT NULL AUTO_INCREMENT,
	phone_user_id int(11) NOT NULL,
	phone_number int(11) NOT NULL UNIQUE,
	type_phone int(11) NOT NULL,
	PRIMARY KEY (id_phone)
);

CREATE TABLE IF NOT EXISTS PhoneType (
	id_phone_type int(11) NOT NULL AUTO_INCREMENT,
	name_typePh varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY (id_phone_type)
);

CREATE TABLE IF NOT EXISTS EmailType (
	id_email int(11) NOT NULL AUTO_INCREMENT,
	type_mail varchar(30) NOT NULL,
	PRIMARY KEY (id_email)
);

CREATE TABLE IF NOT EXISTS UserAccess (
	access_id int(11) NOT NULL AUTO_INCREMENT,
	type_access varchar(30) NOT NULL UNIQUE,
	code_user_type int(2) NOT NULL UNIQUE,
	PRIMARY KEY (access_id)
);

CREATE TABLE IF NOT EXISTS Goods (
	id_goods int(11) NOT NULL AUTO_INCREMENT,
	nameGoods varchar(30) NOT NULL UNIQUE,
	goods_made_code int(11) NOT NULL,
	available_code int(11) NOT NULL,
	discount_code int(11) NOT NULL,
	priceGoods int(11) NOT NULL,
	count_goods int(11) NOT NULL,
	PRIMARY KEY (id_goods)
);

CREATE TABLE IF NOT EXISTS MadeGoods (
	id_made int(11) NOT NULL AUTO_INCREMENT,
	regionMade varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY (id_made)
);

CREATE TABLE IF NOT EXISTS Available (
	id_available int(11) NOT NULL AUTO_INCREMENT,
	type_available varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY (id_available)
);

CREATE TABLE IF NOT EXISTS Discount (
	id_discount int(11) NOT NULL AUTO_INCREMENT,
	discount_type varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY (id_discount)
);

CREATE TABLE IF NOT EXISTS OrderGoods (
	id_order int(11) NOT NULL AUTO_INCREMENT,
	order_user_id int(11) NOT NULL,
	order_goods_id int(11) NOT NULL,
	status_code int(11) NOT NULL,
	delivery_type_code int(11) NOT NULL,
	delivery_status_code int(11) NOT NULL,
	countInOrder int(11) NOT NULL,
	PRIMARY KEY (id_order)
);

CREATE TABLE IF NOT EXISTS StatusPurchase (
	id_status int(11) NOT NULL AUTO_INCREMENT,
	status_name varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY (id_status)
);

CREATE TABLE IF NOT EXISTS DeliveryType (
	id_devType int(11) NOT NULL AUTO_INCREMENT,
	delivery_type varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY (id_devType)
);

CREATE TABLE IF NOT EXISTS DeliveryStatus (
	id_devStatus int(11) NOT NULL AUTO_INCREMENT,
	status_deliv varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY (id_devStatus)
);

CREATE TABLE IF NOT EXISTS Wallet (
	id_wallet int(11) NOT NULL AUTO_INCREMENT,
	money int(11) NOT NULL DEFAULT '0',
	wall_user_id int(11) NOT NULL,
	PRIMARY KEY (id_wallet)
);

CREATE TABLE IF NOT EXISTS UserHistory (
	login VARCHAR(30),
	money DECIMAL DEFAULT '0'
);

CREATE TABLE IF NOT EXISTS ActiveUsers (
	name_active VARCHAR(30),
	phone_active INT(11),
	email_active VARCHAR(30),
	money DECIMAL DEFAULT '0'
);


/*

ALTER TABLE Users ADD CONSTRAINT Users_fk0 FOREIGN KEY (type_UsCode) REFERENCES UserType(type_code);

ALTER TABLE Email ADD CONSTRAINT Email_fk0 FOREIGN KEY (email_user_id) REFERENCES Users(id_user);

ALTER TABLE Email ADD CONSTRAINT Email_fk1 FOREIGN KEY (email_type) REFERENCES EmailType(id_email);

ALTER TABLE Phone ADD CONSTRAINT Phone_fk0 FOREIGN KEY (phone_user_id) REFERENCES Users(id_user);

ALTER TABLE Phone ADD CONSTRAINT Phone_fk1 FOREIGN KEY (type_phone) REFERENCES PhoneType(id_phone_type);

ALTER TABLE UserAccess ADD CONSTRAINT UserAccess_fk0 FOREIGN KEY (code_user_type) REFERENCES UserType(type_code);

ALTER TABLE Goods ADD CONSTRAINT Goods_fk0 FOREIGN KEY (goods_made_code) REFERENCES MadeGoods(id_made);

ALTER TABLE Goods ADD CONSTRAINT Goods_fk1 FOREIGN KEY (available_code) REFERENCES Available(id_available);

ALTER TABLE Goods ADD CONSTRAINT Goods_fk2 FOREIGN KEY (discount_code) REFERENCES Discount(id_discount);

ALTER TABLE OrderGoods ADD CONSTRAINT OrderGoods_fk0 FOREIGN KEY (order_user_id) REFERENCES Users(id_user);

ALTER TABLE OrderGoods ADD CONSTRAINT OrderGoods_fk1 FOREIGN KEY (order_goods_id) REFERENCES Goods(id_goods);

ALTER TABLE OrderGoods ADD CONSTRAINT OrderGoods_fk2 FOREIGN KEY (status_code) REFERENCES StatusPurchase(id_status);

ALTER TABLE OrderGoods ADD CONSTRAINT OrderGoods_fk3 FOREIGN KEY (delivery_type_code) REFERENCES DeliveryType(id_devType);

ALTER TABLE OrderGoods ADD CONSTRAINT OrderGoods_fk4 FOREIGN KEY (delivery_status_code) REFERENCES DeliveryStatus(id_devStatus);

ALTER TABLE Wallet ADD CONSTRAINT Wallet_fk0 FOREIGN KEY (wall_user_id) REFERENCES Users(id_user);

*/