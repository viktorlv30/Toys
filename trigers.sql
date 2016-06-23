DELIMITER //
CREATE TRIGGER insert_before_user_save BEFORE INSERT ON Users
FOR EACH ROW
BEGIN
	SET NEW.surNameUser = LEFT(NEW.surNameUser, 1);
	SET NEW.passUser = MD5(NEW.passUser);
END;


DELIMITER //
CREATE TRIGGER insert_after_user_login AFTER INSERT ON Users
FOR EACH ROW
BEGIN
	INSERT INTO user_history 
		VALUES(NEW.login, NEW.money);
END;
	
CREATE TABLE user_pass (
	login VARCHAR(30),
	family VARCHAR(30),
	imya VARCHAR(10),
	po_batkovi VARCHAR(10),
	password VARCHAR(50),
	money DECIMAL DEFAULT '0'
);

DELIMITER //
CREATE TRIGGER insert_before_user_pass BEFORE INSERT ON user_pass
FOR EACH ROW
BEGIN
	SET NEW.imya = LEFT(NEW.imya, 1);
	SET NEW.po_batkovi = LEFT(NEW.po_batkovi, 1);
	SET NEW.password = MD5(NEW.password);
END;

/*LEFT('abcdef', 1);*/

INSERT INTO user_pass
	VALUES ('admin', 'admin', 'vasja', 'petrovich', '1111', '200');



CREATE TABLE user_history (
	login VARCHAR(30),
	money DECIMAL DEFAULT '0'
);




DELIMITER //
CREATE TRIGGER update_after_user_pass AFTER UPDATE ON user_pass
FOR EACH ROW
BEGIN
	INSERT INTO user_history VALUES(NEW.login, NEW.money-OLD.money);
END;

UPDATE user_pass SET money=money+25 WHERE login='admin';

INSERT INTO user_pass
	VALUES ('admin', 'losyara', 'kolya', 'semenovich', '2222', '20');

INSERT INTO user_pass
	VALUES ('kon', 'petyx', 'mukola', 'vasin_sun', '3333', '50');


DELIMITER //
CREATE TRIGGER delete_before_user_pass BEFORE DELETE ON user_pass
FOR EACH ROW
BEGIN
	INSERT INTO user_history 
		VALUES(CONCAT (OLD.login, ' deleted'), OLD.money);
END;

DELETE FROM user_pass WHERE login='admin';











