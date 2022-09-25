CREATE TABLE USUARIO
	(password 		VARCHAR(9),
	nombre 		VARCHAR(100),
	CONSTRAINT pk_usuario PRIMARY KEY (password)
	
	);
	
CREATE TABLE HISTORIAL_PRODUCTOS
	(password 		VARCHAR(9),
	codigo		INT(10) AUTO_INCREMENT,
	nombre 		VARCHAR(100),
	cantidad	INT(10),
	precio		DOUBLE(10,2),
	CONSTRAINT pk_historial PRIMARY KEY(codigo),
	CONSTRAINT fk_historial FOREIGN KEY (password) REFERENCES USUARIO(password) ON UPDATE CASCADE
	);
	
INSERT INTO USUARIO 
VALUES('usuario','usuario');

INSERT INTO HISTORIAL_PRODUCTOS(password,nombre,cantidad,precio)
VALUES('usuario','Baraja Gwent',1,60);