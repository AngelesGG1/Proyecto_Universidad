/*Crear una tabla llamada PRODUCTOS*/
/*La tabla productos fue creada para representar la entidad productos*/
/*ID_PRODUCTO Se utiliza como llave primaria ya que es un identificador unico p/cada producto y elegi number porque 
  es un valor numerico entero*/
/*Nombre varchar 2 ,almacena el nombre del producto y se eligio varchar porque guarda texto */
/*Descripcion varchar 2 , contiene una descripcion breve y se elegio varchar porque guarda texto*/
/*Fecha caducidad date , registra fecha limite de uso del producto y se eligio date porque permite almacenar datos como la fecha */
/*Disponibilidad number , indica si el producto esta disponible (1) no disponible (0) y se usa number para representar un valor
 logico binario*/

CREATE TABLE ACTIVIDADANG.PRODUCTOS(
	ID_PRODUCTOS NUMBER PRIMARY KEY ,
	NOMBRE VARCHAR2(100)NOT NULL,
	DESCRIPCION VARCHAR2(100) NOT NULL, 
	FECHA_CADUCIDAD DATE NOT NULL,
	DISPONIBILIDAD NUMBER(1) NOT NULL
	);

/*SELECIONAR TODOS LOS REGISTROS*/
SELECT * FROM ACTIVIDADANG.PRODUCTOS;

/*SELECT CON WHERE*/

/*INSERT*/
INSERT INTO ACTIVIDADANG.PRODUCTOS (ID_PRODUCTOS,NOMBRE,DESCRIPCION,FECHA_CADUCIDAD,DISPONIBILIDAD) VALUES (1,'Base de maquillaje matte','Base de maquillaje de alta cobertura, tono medio',TO_DATE('15-03-2026','DD-MM-YYYY'), 1);
INSERT INTO ACTIVIDADANG.PRODUCTOS (ID_PRODUCTOS,NOMBRE,DESCRIPCION,FECHA_CADUCIDAD,DISPONIBILIDAD) VALUES (2,'Labial rojo','labial de larga duracion, color rojo intenso',TO_DATE('01-12-2025','DD-MM-YYYY'), 0);
INSERT INTO ACTIVIDADANG.PRODUCTOS (ID_PRODUCTOS,NOMBRE,DESCRIPCION,FECHA_CADUCIDAD,DISPONIBILIDAD) VALUES (3 ,'Sombra de ojos','paleta de 6 sombras , en tonos tierra',TO_DATE('12-03-2026','DD-MM-YYYY'), 1);
INSERT INTO ACTIVIDADANG.PRODUCTOS (ID_PRODUCTOS,NOMBRE,DESCRIPCION,FECHA_CADUCIDAD,DISPONIBILIDAD) VALUES (4 ,'Delineador negro','delineador resistente al agua', TO_DATE('06-06-2026','DD-MM-YYYY'),1);

/*PROVEEDORES*/
/*Crear una tabla llamada PROVEEDORES*/
/*La tabla proveedores fue creada para representar la entidad proveedores*/
/* ID proveedor sirve como identificador unico para cada proveedor y se puso tipo de dato number porque los identificadores
 * generalmente se manejan con numeros secuenciales*/
 /*Correo se creo por que es un medio de contacto importante y se eligio tipo de dato varchar2 porque son cadenas de texto de 
  longitud variable*/
/*Numerotelefonico es para almacenar el numero de telefono del contacto del proveedor y el tipo de dato fue varchar2 porque 
puedo definir un limite de caracteres*/
/*Estatus se creo para indicarsi el proveedor esta activo o no y puse tipo de dato number porque solo se necesita almacenar
 * un digito ya sea 1 o 0 y esta es una buena opcion para representar estados boleanos*/


 CREATE TABLE ACTIVIDADANG.PROVEEDORES(
 ID_PROVEEDORES NUMBER PRIMARY KEY,
 CORREO VARCHAR2(50) NOT NULL,
 NUMEROTELEFONICO VARCHAR(10)NOT NULL,
 ESTATUS NUMBER(1) NOT NULL
 );

/*INSERT PROVEEDORES*/

INSERT INTO  ACTIVIDADANG.PROVEEDORES(ID_PROVEEDORES,CORREO,NUMEROTELEFONICO,ESTATUS) VALUES (1,'mac@gmail.com',2283967289,1);
INSERT INTO  ACTIVIDADANG.PROVEEDORES(ID_PROVEEDORES,CORREO,NUMEROTELEFONICO,ESTATUS) VALUES (2,'loreal@gmail.com',2287857963,2);
INSERT INTO  ACTIVIDADANG.PROVEEDORES(ID_PROVEEDORES,CORREO,NUMEROTELEFONICO,ESTATUS) VALUES (3,'dior@gmail.com',2283957624,1);

SELECT *FROM ACTIVIDADANG.PROVEEDORES;

/*DESCRIPCION DE RELACION ENTRE PROVEEDOR Y PRODUCTOS:
 * SE DECIDIO CREAR UNA TABLA CON EL NOMBRE PRODUCTOS PORQUE ESTA TABLA ESTA DESTINADA A ALMACENAR INFORMACION RELEVANTE SOBRE LOS ARTICULOS
 * Y AL IGUAL QUE CON LA OTRA TABLA ANTERIOR ,SE UTILIZA UN NOMBRE EN PLURAL PARA REFLEJAR QUE PUEDE HABER VARIOS PROVEEDORES REGISTRADOS.
 */
 
 /*COMENTARIOS A NIVEL TABLA */
 /*PROVEEDORES*/
 COMMENT ON TABLE ACTIVIDADANG.PROVEEDORES IS 'La tabla proveedores fue creada para representar la entidad proveedores';
 
 /*PRODUCTOS*/
  COMMENT ON TABLE ACTIVIDADANG.PRODUCTOS IS 'La tabla productos fue creada para representar la entidad productos';
 
 
 /*COMENTARIOS A NIVEL COLUMNA */
  /*PROVEEDORES*/
 COMMENT ON COLUMN ACTIVIDADANG.PROVEEDORES.ID_PROVEEDORES IS ' sirve como identificador unico para cada proveedor y se puso tipo de dato number porque los identificadores
 * generalmente se manejan con numeros secuenciales';
 COMMENT ON COLUMN ACTIVIDADANG.PROVEEDORES.CORREO IS 'se creo por que es un medio de contacto importante y se eligio tipo de dato varchar2 porque son cadenas de texto de 
  longitud variable';
 COMMENT ON COLUMN ACTIVIDADANG.PROVEEDORES.NUMEROTELEFONICO IS'es para almacenar el numero de telefono del contacto del proveedor y el tipo de dato fue varchar2 porque 
  puedo definir un limite de caracteres';
 COMMENT ON COLUMN ACTIVIDADANG.PROVEEDORES.ESTATUS  IS'e creo para indicarsi el proveedor esta activo o no y puse tipo de dato number porque solo se necesita almacenar
 * un digito ya sea 1 o 0 y esta es una buena opcion para representar estados boleanos';
  
 /*PRODUCTOS*/
  COMMENT ON COLUMN ACTIVIDADANG.PRODUCTOS.ID_PRODUCTOS IS 'Se utiliza como llave primaria ya que es un identificador unico p/cada producto y elegi number porque 
  es un valor numerico entero';
  COMMENT ON COLUMN ACTIVIDADANG.PRODUCTOS.NOMBRE IS'almacena  el nombre del producto y se eligio varchar porque guarda texto ';
  COMMENT ON COLUMN ACTIVIDADANG.PRODUCTOS.DESCRIPCION IS'contiene una descripcion breve y se elegio varchar porque guarda texto';
  COMMENT ON COLUMN ACTIVIDADANG.PRODUCTOS.FECHA_CADUCIDAD IS'registra fecha limite de uso del producto y se eligio date porque permite almacenar datos como la fecha';
  COMMENT ON COLUMN ACTIVIDADANG.PRODUCTOS.DISPONIBILIDAD IS'indica si el producto esta disponible (1) no disponible (0) y se usa number para representar un valor
 logico binario';