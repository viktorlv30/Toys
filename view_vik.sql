
CREATE OR REPLACE VIEW AvailableGoods AS
	SELECT
		EstIgrushki.id_goods AS Id,
		EstIgrushki.nameGoods AS Naimenovanie,
		EstIgrushki.priceGoods AS Price,
		Made.regionMade AS Made_in,		
		disc.discount_type AS Znuzhka,
		EstIgrushki.count_goods AS Dostupno
	FROM Goods AS EstIgrushki
		LEFT JOIN MadeGoods AS Made ON EstIgrushki.goods_made_code = Made.id_made
		LEFT JOIN Discount AS disc ON EstIgrushki.discount_code = disc.id_discount
	WHERE EstIgrushki.available_code=1;
	

CREATE OR REPLACE VIEW Stuff AS
	SELECT
		Us.id_user AS Id,
		Us.nameUser AS Name,
		Us.surNameUser AS Surname,
		typeUs.type_user AS Position,
		Ac.type_access AS Permission,
		E.name_email AS "Work's mail",
		P.phone_number AS "Mobile phone",
		Us.passUser AS PASSW
		FROM Users AS Us
			LEFT JOIN UserType AS typeUs ON Us.type_UsCode = typeUs.type_code
			LEFT JOIN UserAccess AS Ac ON typeUs.type_code = Ac.code_user_type
			LEFT JOIN Email As E ON Us.id_user = E.email_user_id
			LEFT JOIN Phone AS P ON Us.id_user = P.phone_user_id
	WHERE Us.type_UsCode < 3 AND E.email_type = 1 AND P.type_phone = 1;
		
	
CREATE TABLE IF NOT EXISTS Wallet (
	id_wallet int(11) NOT NULL AUTO_INCREMENT,
	money int(11) NOT NULL DEFAULT '0',
	wall_user_id int(11) NOT NULL,
	PRIMARY KEY (id_wallet)
);

	
CREATE OR REPLACE VIEW RichBuyers AS
	SELECT
		Us.id_user AS Id,
		Us.nameUser AS Name,
		Us.surNameUser AS Surname,
		typeUs.type_user AS Position,
		E.name_email AS "Unformal mail",
		P.phone_number AS "Mobile phone",
		W.money AS Money
		FROM Users AS Us
			LEFT JOIN UserType AS typeUs ON Us.type_UsCode = typeUs.type_code
			LEFT JOIN Email As E ON Us.id_user = E.email_user_id
			LEFT JOIN Phone AS P ON Us.id_user = P.phone_user_id
			LEFT JOIN Wallet AS W ON Us.id_user = W.wall_user_id
		WHERE Us.type_UsCode > 1 AND W.money > 10000;
