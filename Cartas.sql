CREATE TABLE USUARIO
	(password 		VARCHAR(9),
	nombre 		VARCHAR(100),
	CONSTRAINT pk_usuario PRIMARY KEY (password)
	
	);
	
CREATE TABLE CARTAS
	(password 		VARCHAR(9),
	codigo		INT(10) AUTO_INCREMENT,
	nombre 		VARCHAR(100),
	precio		DOUBLE(10,2),
	adquisicion date,
	baraja		boolean,
	CONSTRAINT pk_historial PRIMARY KEY(codigo),
	CONSTRAINT fk_historial FOREIGN KEY (password) REFERENCES USUARIO(password) ON UPDATE CASCADE
	);
	
INSERT INTO USUARIO 
VALUES('usuario','usuario');
INSERT INTO USUARIO (password,nombre)
VALUES('1234','Axiont58');
INSERT INTO USUARIO (password,nombre)
VALUES('keo_7','Joseba');

INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Principe Stennis',6,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Fortest',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Señuelo',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Cuerno de combate',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Quemadura',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Escarcha heladora',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Lluvia torrencial',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Tiempo despejado',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Geralt de Rivia',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Cirilla',60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Yennefer',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Triss',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Villentretenmerth',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Baraja Gwent',60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Vesemir',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Olgierd',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Zoltan',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Emiel',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Gaunter',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Jaskier',60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Gaunter',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Elfo',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Roche',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Natalis',60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Esterad',60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Philippa',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Catapulta',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Medico',60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Dijkstra',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Sabrina',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Skaggs',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Franjas Azules',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Thaler',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Infante',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Tu puta madre la infanteria',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Yarpen',60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Tormenta',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Sapo',60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Elemental',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Demonibestia',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Arachas',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Moira',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Baraja Gwent',60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Emhyr',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Vreemde',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Sweers',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Arquero',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Apoyo',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Brigada',60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Principe Stennis',5,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Fortest',4,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Señuelo',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Cuerno de combate',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Quemadura',60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Escarcha heladora',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Lluvia torrencial',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Tiempo despejado',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Geralt de Rivia',60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Cirilla',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Yennefer',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Triss',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Villentretenmerth',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Baraja Gwent',60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Vesemir',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Olgierd',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Zoltan',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Emiel',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Gaunter',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Jaskier',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Gaunter',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Elfo',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Roche',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Natalis',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Esterad',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Philippa',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Catapulta',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Medico',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Dijkstra',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Sabrina',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Skaggs',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Franjas Azules',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Thaler',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Infante',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Tu puta madre la infanteria',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Yarpen',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Tormenta',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Sapo',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Elemental',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Demonibestia',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Arachas',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Moira',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Baraja Gwent',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Emhyr',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Vreemde',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Sweers',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Arquero',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Apoyo',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Brigada',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Skaggs',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Franjas Azules',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Thaler',30,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Infante',30,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Tu puta madre la infanteria',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Yarpen',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Tormenta',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Sapo',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('usuario','Elemental',60,'2015-01-20',true);

INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('1234','Principe Stennis',6,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('1234','Fortest',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('1234','Señuelo',60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja)
VALUES('1234','Cuerno de combate',60,'2015-01-20',true);
