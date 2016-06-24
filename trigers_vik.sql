DELIMITER //
CREATE TRIGGER insert_before_user_save BEFORE INSERT ON Users
FOR EACH ROW
BEGIN
	SET NEW.surNameUser = LEFT(NEW.surNameUser, 1);
	SET NEW.passUser = MD5(NEW.passUser);
END;


DELIMITER //
CREATE TRIGGER insert_after_user_login AFTER INSERT ON ActiveUsers
FOR EACH ROW
BEGIN
	INSERT INTO UserHistory 
		VALUES(NEW.login, NEW.money);
END;
	
	
	









