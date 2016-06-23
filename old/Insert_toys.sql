INSERT INTO TypeUsers (typeName)
	VALUES ('Administrator'),
		('Seller'),
		('Buyer')
);

INSERT INTO Email (id_user, nameMail, typeMail)
	VALUES 
		('1', 'sobaka@mail.com', '1'),
		('1', 'korobka@gmail.com', '2'),
		('1', 'kvadratik@gmail.com', '3'),
		('2', 'maska@gmail.com', '1'),
		('2', 'kolona@gmail.com', '2'),
		('2', 'blonda@gmail.com', '3'),
		('3', 'smart@gmail.com', '1'),
		('3', 'stol@gmail.com', '2'),
		('3', 'mushka@gmail.com', '3'),
		('4', 'tryba@gmail.com', '1'),
		('4', 'rychka@gmail.com', '2'),
		('5', 'tramvay@gmail.com', '1'),
		('5', 'kolco@gmail.com', '2'),
		('5', 'ekran@gmail.com', '3');



INSERT INTO Phone (id_user, numberPhone, typePhone)
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


CREATE TABLE IF NOT EXISTS Goods(
	id_good INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nameGood VARCHAR(30),
	countryMade INT(11),
	available INT(11),
	discount INT(11),
	price INT(11)
);

INSERT INTO Goods (nameGood, countryMade, available, discount, price)
	VALUES 
		('Slonik', '1', '1', '1', '70'),
		('Begimotic', '2', '2', '2', '50'),
		('Krokodil', '3', '1', '3', '120'),
		('Koshka', '5', '1', '2', '25'),
		('Sobachka', '4', '1', '2', '70'),
		('Obizyana', '1', '2', '3', '10'),
		('Cherepashka', '2', '1', '2', '37'),
		('TV-set', '1', '1', '1', '7000'),
		('TV-set', '1', '1', '1', '7000'),
		('TV-set', '1', '1', '1', '7000'),
		('TV-set', '1', '1', '1', '7000'),
		('TV-set', '1', '1', '1', '7000'),
		('TV-set', '1', '1', '1', '7000'),



CREATE TABLE IF NOT EXISTS OrderGoods(
	id_order INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_user INT(11),
	id_good	INT(11),
	orderStatus INT(11),
	typeDelivery INT(11),
	statusDeliv INT(11)
);


	