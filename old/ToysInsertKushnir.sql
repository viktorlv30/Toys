INSERT INTO UserAccess (type_access, code_user_type)
	VALUES 
		('full access', '1'),
		('aceess to buy&sell', '2'),
		('only to buy', '3');
		

INSERT INTO Wallet (id_wallet, money, wall_user_id)
	VALUES 
		('1', '5000', '1'),
		('2', '6000', '2'),
		('3', '7000', '3'),
		('4', '8000', '4'),
		('5', '9000', '5'),
		('6', '10000', '6'),
		('7', '11000', '7'),
		('8', '12000', '8'),
		('9', '13000', '9');
	
INSERT INTO Discount (id_discount , discount_type)
	VALUES 
		('1', '3-rd buying-10%'),
		('2', '5-th buying-15%'),
		('3', '10-rd buying-20%'),
		('4', '20-rd buying-50%');
		
INSERT INTO EmailType (id_email, type_mail)
	VALUES 
		('1', 'formal'),
		('2', 'unformal'),
		('3', 'for spam');

INSERT INTO PhoneType (id_phone_type, name_typePh)
	VALUES
		('1', 'working mobile'),
		('2', 'private mobile'),
		('3', 'stacionar');

INSERT INTO StatusPurchase (id_status, status_name)
	VALUES
		('1', 'In bascket'),
		('2', 'Reserved'),
		('3', 'Paid'),
		('4', 'Order finished');

INSERT INTO DeliveryType (id_devType, delivery_type)
	VALUES
		('1', 'Nova poshta'),
		('2', 'Ukrposhta'),
		('3', 'Selfdelivering(Pickup)');		
		
INSERT INTO DeliveryStatus (id_devStatus, status_deliv)
	VALUES
		('1', 'Packed'),
		('2', 'In delivering process'),
		('3', 'Awarded');	
		