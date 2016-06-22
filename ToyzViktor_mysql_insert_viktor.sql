/*
CREATE TABLE IF NOT EXISTS Users (
	id_user int(11) NOT NULL AUTO_INCREMENT,
	type_UsCode int(11) NOT NULL,
	nameUser varchar(30) NOT NULL,
	surNameUser varchar(30) NOT NULL,
	passUser varchar(30) NOT NULL,
	PRIMARY KEY (id_user)
);
*/

INSERT INTO UserType (type_user, type_code)
	VALUES 
		('Administrator', '1'),
		('Seller', '2'),
		('Buyer', '3');


INSERT INTO Email (name_email, email_user_id, email_type)
	VALUES 
		('sobaka@mail.com', '1', '1'),
		('korobka@gmail.com', '1', '2'),
		('kvadratik@gmail.com', '1', '3'),
		('maska@gmail.com', '2', '1'),
		('kolona@gmail.com', '2', '2'),
		('blonda@gmail.com', '2', '3'),
		('smart@gmail.com', '3', '1'),
		('stol@gmail.com', '3', '2'),
		('mushka@gmail.com', '3', '3'),
		('tryba@gmail.com', '4', '1'),
		('rychka@gmail.com', '4', '2'),
		('tramvay@gmail.com', '5', '1'),
		('kolco@gmail.com', '5', '2'),
		('ekran@gmail.com', '5', '3');


INSERT INTO Phone (phone_user_id, phone_number, type_phone)
	VALUES 
		('1', '0979494941', '1'),
		('1', '0501314578', '2'),
		('1', '0432525654', '3'),
		('2', '0675604121', '1'),
		('2', '0631324585', '2'),
		('2', '0445631241', '3'),
		('3', '0968741232', '1'),
		('3', '0661258796', '2'),
		('3', '0525441451', '3'),
		('4', '0971112233', '1'),
		('4', '0735656741', '2'),
		('5', '0975553212', '1'),
		('5', '0509876543', '2'),
		('5', '0371121232', '3');

/*
CREATE TABLE PhoneType (
	id_phone_type int(11) NOT NULL AUTO_INCREMENT,
	name_typePh varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY (id_phone_type)
);
*/
/*
CREATE TABLE EmailType (
	id_email int(11) NOT NULL AUTO_INCREMENT,
	type_mail varchar(30) NOT NULL,
	PRIMARY KEY (id_email)
);
*/
/*
CREATE TABLE UserAccess (
	access_id int(11) NOT NULL AUTO_INCREMENT,
	type_access varchar(30) NOT NULL UNIQUE,
	code_user_type int(2) NOT NULL UNIQUE,
	PRIMARY KEY (access_id)
);
*/

INSERT INTO Goods (nameGoods, goods_made_code, available_code, discount_code, priceGoods, count_goods)
	VALUES 
		('Slonik',      '1', '1', '1', '70',   '5'),
		('Begimotic',   '2', '2', '2', '50',   '8'),
		('Krokodil',    '3', '1', '3', '120', '12'),
		('Koshka',      '5', '1', '2', '25',  '15'),
		('Sobachka',    '4', '1', '2', '70',  '17'),
		('Obizyana',    '1', '2', '3', '10',  '21'),
		('Cherepashka', '2', '1', '2', '37',  '25'),
		('Kolibrik',    '3', '2', '1', '101', '30'),
		('Vaza',        '4', '3', '3', '63',  '45'),
		('Tarelka',     '5', '1', '3', '11',  '13'),
		('Pluta',       '1', '2', '2', '98',  '10'),
		('Makogon',     '2', '2', '2', '75',   '3'),
		('Makaron',     '3', '1', '2', '44',  '16');

/*
CREATE TABLE MadeGoods (
	id_made int(11) NOT NULL AUTO_INCREMENT,
	regionMade varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY (id_made)
);
*/
/*
CREATE TABLE Available (
	id_available int(11) NOT NULL AUTO_INCREMENT,
	type_available varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY (id_available)
);
*/
/*
CREATE TABLE Discount (
	id_discount int(11) NOT NULL AUTO_INCREMENT,
	discount_type varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY (id_discount)
);
*/

INSERT INTO OrderGoods (order_user_id, order_goods_id, status_code, delivery_type_code, delivery_status_code, countInOrder)
	VALUES 
		('1', '1', '1', '1', '1', '1'),
		('2', '2', '2', '1', '1', '2'),
		('3', '3', '1', '1', '2', '1'),
		('5', '4', '1', '2', '2', '3'),
		('4', '5', '1', '2', '1', '1'),
		('1', '6', '2', '2', '1', '2'),
		('2', '7', '1', '3', '1', '1'),
		('2', '8', '2', '3', '1', '2'),
		('2', '9', '3', '2', '2', '1'),
		('1', '10', '1', '1', '2', '2'),
		('3', '11', '2', '1', '3', '1'),
		('3', '12', '2', '2', '3', '1'),
		('2', '13', '1', '2', '3', '2');

/*
CREATE TABLE StatusPurchase (
	id_status int(11) NOT NULL AUTO_INCREMENT,
	status_name varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY (id_status)
);
*/
/*
CREATE TABLE DeliveryType (
	id_devType int(11) NOT NULL AUTO_INCREMENT,
	delivery_type varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY (id_devType)
);
*/
/*
CREATE TABLE DeliveryStatus (
	id_devStatus int(11) NOT NULL AUTO_INCREMENT,
	status_deliv varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY (id_devStatus)
);
*/
/*
CREATE TABLE Wallet (
	id_wallet int(11) NOT NULL AUTO_INCREMENT,
	money int(11) NOT NULL DEFAULT '0',
	wall_user_id int(11) NOT NULL,
	PRIMARY KEY (id_wallet)
);
*/

