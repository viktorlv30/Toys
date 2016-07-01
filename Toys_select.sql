SELECT Users.id_user,
	UserType.id_type
	FROM Users, UserType;
	
SELECT Users.nameUser, UserType.type_user, UserType.id_type
	FROM Users, UserType
	WHERE Users.type_UsCode = UserType.id_type;