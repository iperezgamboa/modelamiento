

CREATE TABLE cursos(id SERIAL PRIMARY KEY);
CREATE TABLE alumnos(rut VARCHAR(30) PRIMARY KEY, nombre VARCHAR(100) NOT NULL, cursos_id VARCHAR(20), FOREIGN KEY(cursos_id) REFERENCES cursos(id));
CREATE TABLE profesores(id SERIAL PRIMARY KEY, nombre VARCHAR(100), departamento VARCHAR(100));
CREATE TABLE pruebas(id_SERIAL PRIMARY KEY, puntaje FLOAT, profesores_id VARCHAR(100),FOREIGN KEY(profesores_id) REFERENCES profesores(id));

CREATE TABLE alumnos_prueba(alumnos_rut VARCHAR(100), FOREIGN KEY(alumnos_rut) REFERENCES alumnos(rut), pruebas_id INT, FOREIGN KEY(pruebas_id) REFERENCES pruebas(id));  
s



