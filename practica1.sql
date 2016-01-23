-- Primera practica
CREATE TABLE DANCE(ID_DANCE INTEGER, NOMBRE VARCHAR2(40), EDAD INTEGER);

-- ACTIVAMOS MODO DE CONSOLA
SET SERVEROUTPUT ON;

--BLOQUE PL SQL
DECLARE
EDAD INTEGER;
YEARS INTEGER;
BEGIN
YEARS:=42;
EDAD:=YEARS*365;

DBMS_OUTPUT.PUT_LINE('tU EDAD EN DIAS ES:'||EDAD);
END;
-- CREAR UN BLOQUE PL SQL QUE GENERE 200,000 REGIISTRO EN SECUENCIA ASCENDENTE EN LA TABLA DANCE
BEGIN

   FOR I IN 1..200000 LOOP
     INSERT INTO DANCE VALUES(I,'CAMPOS',44);
     
     END LOOP;
    END;
    /
  --HACEMOS UN SELECT PARA VER QUE DIABLOS HIZO
  SELECT * FROM DANCE;

--sISTEMITA DE PELICULAS LA DE SALA SERA TU TAREA

CREATE TABLE PELICULA (ID_PELICULA INTEGER,
                      TITULO VARCHAR2(120),
                      SINOPSIS VARCHAR2(500),
                      CALSIFICACION VARCHAR2(5),
                      CONSTRAINT PK_ID_PELICULA PRIMARY KEY( ID_PELICULA)
                      );
                      
                     DESCRIBE  PELICULA;
CREATE TABLE HORARIOS (ID_HORARIO INTEGER,
                       ID_PELICULA INTEGER,
                       HORARIO VARCHAR2(8),
                       CONSTRAINT PK_ID_HORARIO PRIMARY KEY(ID_HORARIO),
        CONSTRAINT FK1_ID_PELICULA FOREIGN KEY(ID_PELICULA) REFERENCES PELICULA(ID_PELICULA)
        );
