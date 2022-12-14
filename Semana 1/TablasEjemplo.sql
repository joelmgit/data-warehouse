USE DB_EXAMPLE;

CREATE TABLE DIM_CLIENTES(
	ID_CLIENTE INT NOT NULL,
	NOMBRE_CLIENTE VARCHAR(30) NOT NULL,
	PRIMARY KEY(ID_CLIENTE)
	);

 
CREATE TABLE DIM_PRODUCTOS(
	ID_PRODUCTO INT NOT NULL,
	NOMBRE_PRODUCTO VARCHAR (30) NOT NULL,
	RUBRO VARCHAR(20) NOT NULL,
	TIPO VARCHAR(20) NOT NULL,
	PRIMARY KEY(ID_PRODUCTO)
	);


CREATE TABLE DIM_FECHAS(
	ID_FECHA INT NOT NULL,
	ANIO INT NOT NULL,
	TRIMESTER INT NOT NULL,
	MES INT NOT NULL,
	DIA INT NOT NULL,
	PRIMARY KEY(ID_FECHA)
	);
 

CREATE TABLE HECHOS_VENTAS(
	ID_FECHA INT NOT NULL,
	ID_PRODUCTO INT NOT NULL,
	ID_CLIENTE INT NOT NULL,
	IMPORTE_TOTAL DECIMAL(12,2) NOT NULL, /*METRICAS O MEDIDAS*/
	UTILIDAD  DECIMAL(12,2) NOT NULL,  /*METRICAS O MEDIDAS*/
	PRIMARY KEY(ID_FECHA,ID_PRODUCTO,ID_CLIENTE),
	FOREIGN KEY(ID_FECHA) REFERENCES DIM_FECHAS(ID_FECHA),
	FOREIGN KEY(ID_CLIENTE) REFERENCES DIM_CLIENTES(ID_CLIENTE),
	FOREIGN KEY(ID_PRODUCTO) REFERENCES DIM_PRODUCTOS(ID_PRODUCTO)
	);

