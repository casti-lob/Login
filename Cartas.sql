CREATE TABLE USUARIO
	(password 		VARCHAR(9),
	nombre 		VARCHAR(100),
	CONSTRAINT pk_usuario PRIMARY KEY (password)
	
	);
	
CREATE TABLE CARTAS
	(password 		VARCHAR(9),
	codigo		INT(10) AUTO_INCREMENT,
	nombre 		VARCHAR(100),
	cantidad	INT(10),
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

INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Principe Stennis',9,6,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Fortest',6,0,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Señuelo',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Cuerno de combate',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Quemadura',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Escarcha heladora',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Lluvia torrencial',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Tiempo despejado',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Geralt de Rivia',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Cirilla',1,60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Yennefer',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Triss',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Villentretenmerth',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Baraja Gwent',1,60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Vesemir',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Olgierd',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Zoltan',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Emiel',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Gaunter',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Jaskier',1,60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Gaunter',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Elfo',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Roche',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Natalis',1,60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Esterad',1,60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Philippa',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Catapulta',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Medico',1,60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Dijkstra',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Sabrina',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Skaggs',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Franjas Azules',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Thaler',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Infante',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Tu puta madre la infanteria',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Yarpen',1,60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Tormenta',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Sapo',1,60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Elemental',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Demonibestia',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Arachas',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Moira',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Baraja Gwent',1,60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Emhyr',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Vreemde',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Sweers',9,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Arquero',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Apoyo',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Brigada',1,60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Principe Stennis',9,5,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Fortest',6,8,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Señuelo',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Cuerno de combate',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Quemadura',1,60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Escarcha heladora',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Lluvia torrencial',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Tiempo despejado',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Geralt de Rivia',1,60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Cirilla',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Yennefer',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Triss',8,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Villentretenmerth',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Baraja Gwent',1,60,'2015-01-20',false);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Vesemir',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Olgierd',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Zoltan',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Emiel',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Gaunter',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Jaskier',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Gaunter',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Elfo',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Roche',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Natalis',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Esterad',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Philippa',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Catapulta',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Medico',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Dijkstra',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Sabrina',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Skaggs',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Franjas Azules',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Thaler',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Infante',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Tu puta madre la infanteria',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Yarpen',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Tormenta',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Sapo',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Elemental',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Demonibestia',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Arachas',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Moira',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Baraja Gwent',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Emhyr',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Vreemde',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Sweers',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Arquero',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Apoyo',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Brigada',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Skaggs',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Franjas Azules',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Thaler',1,30,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Infante',7,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Tu puta madre la infanteria',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Yarpen',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Tormenta',1,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Sapo',8,60,'2015-01-20',true);
INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)
VALUES('usuario','Elemental',1,60,'2015-01-20',true);

