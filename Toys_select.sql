SELECT Users.id_user,
	UserType.id_type
	FROM Users, UserType;
	
EXPLAIN SELECT Users.nameUser, UserType.type_user, UserType.id_type
	FROM Users, UserType
	WHERE Users.type_UsCode = UserType.id_type;
	
ALTER TABLE Users ADD INDEX Users(type_UsCode);

ALTER TABLE UserType ADD INDEX UserType(type_code);



OPTIMIZE TABLE Users;

OPTIMIZE TABLE UserType;

ALTER TABLE UserType DROP INDEX type_user;

ALTER TABLE UserType DROP INDEX type_code;

ALTER TABLE Users DROP INDEX type_UsCode;


/*
1. Індексують ті стовпці які беруть участь в пошуках(які вказуються в WHERE і т.д.)
2. Індексують таблиці які беруть участь в умовах зєднання
3. Не індексують стовпці які є тільки в SELECT (наприклад - Users.id_user, UserType.id_type в першій таблиці, ці поля є тільки в полі зору команди SELECT)
4. Не індексують колонки які мало відрізняються значеннями один від одного (якщо колонка містить наприклад стать - чоловік або жінка)
5. Не індексують стовпці які мають дуже велику назву (або використовувати аліаси)
6. Створюйте індекси тільки там де вони потрібні

Краще записувати дані не окремими інсертами а одним інсертом по можливості
*/

ALTER TABLE Users ADD FOREIGN KEY (type_UsCode) REFERENCES UserType(type_code);

ALTER TABLE Email ADD FOREIGN KEY (email_user_id) REFERENCES Users(id_user);

ALTER TABLE Email ADD FOREIGN KEY (email_type) REFERENCES EmailType(id_email);

ALTER TABLE Phone ADD FOREIGN KEY (phone_user_id) REFERENCES Users(id_user);

ALTER TABLE Phone ADD FOREIGN KEY (type_phone) REFERENCES PhoneType(id_phone_type);

ALTER TABLE UserAccess ADD FOREIGN KEY (code_user_type) REFERENCES UserType(type_code);

ALTER TABLE Goods ADD FOREIGN KEY (goods_made_code) REFERENCES MadeGoods(id_made);

ALTER TABLE Goods ADD FOREIGN KEY (available_code) REFERENCES Available(id_available);

ALTER TABLE Goods ADD FOREIGN KEY (discount_code) REFERENCES Discount(id_discount);

ALTER TABLE OrderGoods ADD FOREIGN KEY (order_user_id) REFERENCES Users(id_user);

ALTER TABLE OrderGoods ADD FOREIGN KEY (order_goods_id) REFERENCES Goods(id_goods);

ALTER TABLE OrderGoods ADD FOREIGN KEY (status_code) REFERENCES StatusPurchase(id_status);

ALTER TABLE OrderGoods ADD FOREIGN KEY (delivery_type_code) REFERENCES DeliveryType(id_devType);

ALTER TABLE OrderGoods ADD FOREIGN KEY (delivery_status_code) REFERENCES DeliveryStatus(id_devStatus);

ALTER TABLE Wallet ADD FOREIGN KEY (wall_user_id) REFERENCES Users(id_user);