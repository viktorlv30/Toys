
INSERT INTO Users (type_UsCode, nameUser, surNameUser, passUser)
	VALUES 
		('1', 'Viktor', 'Monroe', '123456'),
		('2', 'Romeo', 'Julietta', '369852'),
		('3', 'Olexandr', 'Domogarov', '789456'),
		('1', 'Yuriy', 'Dolgorukiy', '456123'),
		('2', 'Yuriy', 'Potyomkin', '741852'),
		('3', 'Vitaliy', 'Klitchko', '111111'),
		('3', 'Michail', 'Bulgakov', '547896'),
		('3', 'Arseniy', 'Yacenyuk', '852147'),
		('3', 'Loshara', 'Konchanuy', '369753');
		

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
		('5', '0371121232', '3'),
		('6', '0978521471', '1'),
		('7', '0958852141', '1'),
		('8', '0881254878', '1'),
		('9', '0731254879', '1');


INSERT INTO PhoneType (name_typePh)
	VALUES
		('Mobile'),
		('Mobile Private'),
		('Work');
		

INSERT INTO EmailType (type_mail)
	VALUES
		('Private email'),
		('Work email'),
		('Email for spam');


INSERT INTO UserAccess (type_access, code_user_type)
	VALUES
		('Full access', '1'),
		('Sell only', '2'),
		('Buy only', '3');
		

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


INSERT INTO MadeGoods (regionMade)
	VALUES	
		('Europe'),
		('Asia'),
		('Africa'),
		('North America'),
		('South America');


INSERT INTO Available (type_available)
	VALUES
		('Avaliable'),
		('Not available'),
		('In order');


INSERT INTO Discount (discount_type)
	VALUES
		('Opt'),
		('Sale'),
		('No discount');

INSERT INTO OrderGoods (order_user_id, order_goods_id, status_code, delivery_type_code, delivery_status_code, countInOrder)
	VALUES 
		('1', '1', '1', '1', '1', '1'),
		('2', '2', '2', '1', '1', '2'),
		('3', '3', '3', '1', '2', '1'),
		('5', '4', '4', '2', '2', '3'),
		('4', '5', '1', '2', '1', '1'),
		('1', '6', '2', '2', '1', '2'),
		('2', '7', '3', '3', '4', '1'),
		('2', '8', '4', '3', '1', '2'),
		('2', '9', '1', '2', '2', '1'),
		('1', '10', '1', '1', '2', '2'),
		('3', '11', '2', '1', '3', '1'),
		('3', '12', '4', '2', '3', '1'),
		('2', '13', '1', '2', '3', '2');


INSERT INTO StatusPurchase (status_name)
	VALUES
		('In Cart'),
		('Reserved'),
		('Paid'),
		('Purchased');
		

INSERT INTO DeliveryType (delivery_type)
	VALUES 
		('Self delivery'),
		('Nova poshta'),
		('Ukrposhta');

		
INSERT INTO DeliveryStatus (status_deliv)
	VALUES	
		('In the stock'),
		('Prepeared'),
		('Sent'),
		('Delivered');
		

INSERT INTO Wallet (money, wall_user_id)
	VALUES
		('800', '9'),
		('1800', '8'),
		('700', '7'),
		('3500', '6'),
		('11110', '5'),
		('100000', '4'),
		('1200', '3'),
		('980', '2'),
		('1450', '1');

