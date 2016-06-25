CREATE PROCEDURE Goods_insert (IN goods_name  VARCHAR(30), IN new_price INT (11))
BEGIN 
	INSERT INTO Goods(name, price);
	VALUES ('Chupacabra igrashka', '1000');	
END;

	
=====================================================
CREATE FUNCTION count_goods () RETURNS int (5)
BEGIN 
	DECLARE goodsCount INT (5);
	SET  goodsCount=(SELECT COUNT(*) FROM Goods);
	
	RETURN goodsCount;
END;
===============================================================
CREATE FUNCTION count_goods_70 ()
RETURNS INT (5)
BEGIN 
	DECLARE goodsCount INT (5);
	SET  goodsCount=(SELECT COUNT(*) 
							FROM Goods
							WHERE price=70);
	
	RETURN goodsCount;
END;
==================================================================================

На рахунок останньої я ще сумніваюся треба порадитися сьогодні з Вадимом Шараєм


CREATE PROCEDURE Goods_insert (IN name_good  VARCHAR(30), 
								IN price_good INT (11),
								OUT  id INT (11))
BEGIN 
	INSERT INTO Goods (name, price);
	VALUES (name_good, price_good);	
	SET id_goods =(SELECT id_goods 
					FROM Goods	
						WHERE name=name_good
							AND price=price_good
							ORDER BY id DESC
							LIMIT 1);
	END;
	
	CALL Goods_insert ('Chupakabra igrashkova', '50000');
==========