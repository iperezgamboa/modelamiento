CREATE DATABASE caso1;

\c caso1 

CREATE TABLE departamentos(id SERIAL PRIMARY KEY, nombre_dpto VARCHAR(60) NOT NULL UNIQUE);
 
CREATE TABLE trabajadores(rut VARCHAR(13) PRIMARY KEY, 
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(100) NOT NULL, 
    dep_id INT NOT NULL, FOREIGN KEY(dep_id)
    REFERENCES departamentos(id));

CREATE TABLE liquidaciones(id SERIAL PRIMARY KEY,
    archivo_drive CHAR UNIQUE, 
    trab_rut VARCHAR(100) NOT NULL, FOREIGN KEY(trab_rut) REFERENCES trabajadores(rut)); 
    
  


