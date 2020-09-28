CREATE DATABASE caso2;
\c caso2

CREATE TABLE cursos(
    id SERIAL,
    nombre VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE alumnos(
    id SERIAL,
    nombre VARCHAR(50) NOT NULL,
    rut VARCHAR(9) NOT NULL,
    curso_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

CREATE TABLE pruebas (
    id SERIAL,
    asignatura VARCHAR (50) NOT NULL,
    pje_total INT NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE departamentos(
    id SERIAL,
    nombre VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE profesores (
    id SERIAL,
    nombre VARCHAR (50) NOT NULL,
    departamentos_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (departamentos_id) REFERENCES departamentos(id)
);

CREATE TABLE alumnos_pruebas_profesores(
    alumno_id INT NOT NULL,
    prueba_id INT NOT NULL,
    profesor_id INT NOT NULL,
    FOREIGN KEY (alumno_id) REFERENCES alumnos(id),
    FOREIGN KEY (prueba_id) REFERENCES pruebas(id),
    FOREIGN KEY (profesor_id) REFERENCES profesores(id)
    );